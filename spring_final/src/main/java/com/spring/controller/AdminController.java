package com.spring.controller;


import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailImageVO;
import com.spring.model.CocktailVO;
import com.spring.model.PageDTO;
import com.spring.service.CocktailService;

//관리자와 관련된 페이지 이동, 기능 수행 메소드 관리
@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	 @Autowired
	 private CocktailService cocktailService;
	
	//관리자 메인 페이지 이동
	@RequestMapping(value="main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception{
		
		System.out.println("관리자 페이지 이동");
	}
    
    /* 칵테일 등록 페이지 접속 */
    @RequestMapping(value = "cocktailEnroll", method = RequestMethod.GET)
    public void cocktailEnrollGET() throws Exception{
        logger.info("칵테일 등록 페이지 접속");
        
    }
    
    /* 칵테일 관리 페이지 접속 */
    @RequestMapping(value = "cocktailManage", method = RequestMethod.GET)
    public void cocktailManageGET(CocktailCriteria cri, Model model) throws Exception{
    	logger.info("칵테일 목록 페이지 접속" + cri);
		/* 칵테일 목록 출력 데이터 */
        List list = cocktailService.cocktailGetList(cri);
        
        if(!list.isEmpty()) {
			model.addAttribute("list",list);	// 칵테일 존재 경우
		} else {
			model.addAttribute("listCheck", "empty");	// 칵테일 존재하지 않을 경우
		}
        
        /* 페이지 이동 인터페이스 데이터 */
        int total = cocktailService.cocktailGetTotal(cri);
        
        PageDTO pageMaker = new PageDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMaker);
    }   
    
    /* 회원 관리 페이지 접속 */
    @RequestMapping(value = "memberManage", method = RequestMethod.GET)
    public void memberManageGET() throws Exception{
        logger.info("회원 관리 페이지 접속");
    }  
	
	/* 칵테일 등록 */
    @RequestMapping(value="cocktailEnroll.do", method = RequestMethod.POST)
    public String cocktailEnrollPOST(CocktailVO cocktail, RedirectAttributes rttr) throws Exception{
 
        logger.info("cocktailEnroll :" +  cocktail);
        
        cocktailService.cocktailEnroll(cocktail);      // 칵테일 등록 쿼리 수행
        
        rttr.addFlashAttribute("enroll_result", cocktail.getCocktailName());
        
        return "redirect:/admin/cocktailManage";
        
    }
    
    /* 칵테일 수정 */
	@PostMapping("/cocktailModify")
	public String authorModifyPOST(CocktailVO cocktail, RedirectAttributes rttr) throws Exception{
		
		logger.info("cocktailModifyPOST......." + cocktail);
		
		int result = cocktailService.cocktailModify(cocktail);
		
		rttr.addFlashAttribute("modify_result", cocktail);
		
		return "redirect:/admin/cocktailManage";
		
	}
	
	/* 칵테일 삭제 */
	@PostMapping("/cocktailDelete")
	public String cocktailDeletePOST(int cocktailNo, RedirectAttributes rttr) {
		
		logger.info("cocktailDeletePOST..........");
		
		List<CocktailImageVO> fileList = cocktailService.getAttachInfo(cocktailNo);
		
		if(fileList != null) {
			
			List<Path> pathList = new ArrayList();
			
			fileList.forEach(vo ->{
				
				// 원본 이미지
				Path path = Paths.get("C:\\upload", vo.getUploadPath(), vo.getUuid() + "_" + vo.getFileName());
				pathList.add(path);
				
				// 섬네일 이미지
				path = Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid()+"_" + vo.getFileName());
				pathList.add(path);
				
			});
			
			pathList.forEach(path ->{
				path.toFile().delete();
			});
			
		}
		
		
		int result = 0;
		
		result = cocktailService.cocktailDelete(cocktailNo);
		
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/cocktailManage";
		
	}	
	
	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<CocktailImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		logger.info("uploadAjaxActionPOST..........");
		
		
		
		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {
				type = Files.probeContentType(checkfile.toPath());
				logger.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(!type.startsWith("image")) {
				
				List<CocktailImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
				
			}
			
		}// for
		
		String uploadFolder = "C:\\upload";
		
		/* 날짜 폴더 경로 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		/* 이미저 정보 담는 객체 */
		List<CocktailImageVO> list = new ArrayList();
		
		// 향상된 for
		for(MultipartFile multipartFile : uploadFile) {
			
			/* 이미지 정보 객체 */
			CocktailImageVO vo = new CocktailImageVO();
			
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* 파일 저장 */
			try {
				
				multipartFile.transferTo(saveFile);
				
				/* 썸네일 생성(ImageIO) 
				
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName); 
				
				BufferedImage bo_image = ImageIO.read(saveFile);
					//비율 
					//double ratio = 3;
					//넓이 높이
					//int width = (int) (bo_image.getWidth() / ratio);
					//int height = (int) (bo_image.getHeight() / ratio);				
				
				BufferedImage bt_image = new BufferedImage(400, 400, BufferedImage.TYPE_3BYTE_BGR);
								
				Graphics2D graphic = bt_image.createGraphics();
				
				graphic.drawImage(bo_image, 0, 0,400,400, null);
					
				ImageIO.write(bt_image, "jpg", thumbnailFile);
				*/
							
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			} 
			
			list.add(vo);
			
		} //for

		ResponseEntity<List<CocktailImageVO>> result = new ResponseEntity<List<CocktailImageVO>>(list, HttpStatus.OK);
		
		return result;
	}
	
	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		
		logger.info("deleteFile........" + fileName);
		
		File file = null;
		
		try {
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			logger.info("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		} // catch
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
		
	}	

	

}
