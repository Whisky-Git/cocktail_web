package com.spring.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.mapper.forum_AttachMapper;
import com.spring.model.PageMakerDTO;
import com.spring.model.forumVO;
import com.spring.model.forum_criteria;
import com.spring.model.forum_imageVO;
import com.spring.model.forum_replyDTO;
import com.spring.service.forumService;
import com.spring.service.forum_replyService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/forum/*")
public class forumController {
	
    private static final Logger log = LoggerFactory.getLogger(forumController.class);

    @Autowired
    private forumService bservice;
    
    
    @Autowired
	private forum_AttachMapper attachMapper;
    
    @Autowired
	private forum_replyService replyService;
    
    /* 게시판 목록 페이지 접속(페이징 적용) */
    @GetMapping("/list")
    public void forumListGET(Model model, forum_criteria cri) {
        
        System.out.println("forumListGET");
        
        model.addAttribute("list", bservice.getListPaging(cri));
        
        int total = bservice.getTotal(cri);
        
        PageMakerDTO pageMake = new PageMakerDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
    }    
 
    
    @GetMapping("/enroll")
    // => @RequestMapping(value="enroll", method=RequestMethod.GET)
    public void forumEnrollGET() {
        
        log.info("�Խ��� ��� ������ ����");
        
    }
    
    /* 게시판 등록 */
    @PostMapping("/enroll")
    public String forumEnrollPOST(forumVO forum, RedirectAttributes rttr) {
        
        log.info("forumVO : " + forum);
        bservice.enroll(forum);
        
        rttr.addFlashAttribute("result","enroll success");
        return "redirect:/forum/list";
    }
    
    /* 게시판 등록 */
    @PostMapping(value="/ImageAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<forum_imageVO>> forumEnrollPOST(@RequestParam("uploadFile") MultipartFile[] uploadFile) {
      
    	/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {
				type = Files.probeContentType(checkfile.toPath());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
				if(!type.startsWith("image")) {
				
				List<forum_imageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
				
			}
			
		}
    	
        /*이미지 업로드*/
        String uploadFolder = "C:\\upload";
        
        /*폴더경로*/
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
		List<forum_imageVO> list = new ArrayList();
		
     // 향상된 for
     		for(MultipartFile multipartFile : uploadFile) {
     			
     			forum_imageVO vo = new forum_imageVO();
     			/* 파일 이름 */
    			String uploadFileName = multipartFile.getOriginalFilename();	
    			vo.setForum_fileName(uploadFileName);
    			vo.setForum_uploadPath(datePath);

    			/* uuid 적용 파일 이름 */
    			String uuid = UUID.randomUUID().toString();
    			vo.setForum_uuid(uuid);
    			uploadFileName = uuid + "_" + uploadFileName;
    			/* 파일 위치, 파일 이름을 합친 File 객체 */
    			File saveFile = new File(uploadPath, uploadFileName);
    			
    			/* 파일 저장 */
    			try {
    				multipartFile.transferTo(saveFile);
    				
//    				/* 썸네일 생성*/
//    				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
//    				
//    				BufferedImage bo_image = ImageIO.read(saveFile);
//    				
//    				/* 비율 */
//					double ratio = 3;
//					/*넓이 높이*/
//					int width = (int) (bo_image.getWidth() / ratio);
//					int height = (int) (bo_image.getHeight() / ratio);	
//					
//					BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
//    								
//    				Graphics2D graphic = bt_image.createGraphics();
//    				
//    				graphic.drawImage(bo_image, 0, 0,width,height, null);
//    					
//    				ImageIO.write(bt_image, "jpg", thumbnailFile);
    				
    				
    				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);	
    				
    				BufferedImage bo_image = ImageIO.read(saveFile);
    				//비율 
					double ratio = 3;
					//넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);					
				
				
				Thumbnails.of(saveFile)
		        .size(width, height)
		        .toFile(thumbnailFile);
    				
    			}
    			catch (Exception e) 
    			{
    				e.printStackTrace();
    			} 
    			
    			list.add(vo);
     		}
			
     		System.out.println("vo : "+ list );
     		ResponseEntity<List<forum_imageVO>> result = new ResponseEntity<List<forum_imageVO>>(list, HttpStatus.OK);
     		System.out.println("result : "+result);
        return result;
        
    }
    
    /* 게시판 조회 */
    @GetMapping("/get")
    public void forumGetPageGET(int forum_no, Model model,forum_criteria cri) {

    	bservice.viewCount(forum_no);
        model.addAttribute("pageInfo", bservice.getPage(forum_no));
        model.addAttribute("cri",cri);
    }
    
    /* 수정 페이지 이동 */
    @GetMapping("/modify")
    public void forumModifyGET(int forum_no, Model model,forum_criteria cri) {
        
        model.addAttribute("pageInfo", bservice.getPage(forum_no));
        model.addAttribute("cri",cri);
    }
    
    /* 페이지 수정 */
    @PostMapping("/modify")
    public String forumModifyPOST(forumVO forum, RedirectAttributes rttr) {
    	System.out.println(forum);
        bservice.modify(forum);
       
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/forum/list";
        
    }
    
    /* 페이지 삭제 */
    @PostMapping("/delete")
    public String forumDeletePOST(int forum_no, RedirectAttributes rttr) {
        
        bservice.delete(forum_no);
        
        rttr.addFlashAttribute("result", "delete success");
        
        return "redirect:/forum/list";
    }
    
    
	/* 이미지 출력 */
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
		
		File file = new File("c:\\upload\\" + fileName);
		System.out.println(file);
			ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		
		File file = null;
		
		try {
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			System.out.println("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
		
	}
	
	/* 이미지 정보 반환 */
	@GetMapping(value="/getAttachList")
	public ResponseEntity<List<forum_imageVO>> getAttachList(int forum_no){
			log.info("getAttachList.........." + forum_no);
		
			return new ResponseEntity<List<forum_imageVO>>(attachMapper.getAttachList(forum_no), HttpStatus.OK);
	}
	
	/* 리뷰 쓰기 */
	@GetMapping("/replyEnroll")
	public String replyEnrollWindowGET(int forum_no, Model model) {
		forumVO forum = bservice.getforumName(forum_no);
		model.addAttribute("pageInfo", forum);
		
		return "/forum/replyEnroll";
	}
	
	/* 리뷰 수정 팝업창 */
	@GetMapping("/replyUpdate")
	public String replyUpdateWindowGET(forum_replyDTO dto, Model model) {
		forumVO forum = bservice.getforumName(dto.getForum_no());
		model.addAttribute("pageInfo", forum);
		model.addAttribute("replyInfo", replyService.getUpdateReply(dto.getForum_replyId()));
		
		return "/forum/replyUpdate";
	}
    
}
