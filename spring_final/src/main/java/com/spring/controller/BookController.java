package com.spring.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mapper.CocktailAttachMapper;
import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailImageVO;
import com.spring.model.CocktailVO;
import com.spring.model.PageDTO;
import com.spring.model.ReplyDTO;
import com.spring.service.CocktailService;
import com.spring.service.ReplyService;


@Controller
public class BookController {

	private static final Logger Logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	private CocktailService cocktailService;
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private CocktailAttachMapper attachMapper;

	//메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGet(Model model) {
		Logger.info("메인 페이지 진입");
		
		model.addAttribute("ls", cocktailService.likeSelect());
	
	}
	
	//마이페이지 이동
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void mypagePageGet() {
		Logger.info("마이 페이지 진입");
	
	}
	//top30 페이지 이동
			@RequestMapping(value = "/top30", method = RequestMethod.GET)
			public void top30PageGet(Model model) {
				Logger.info("메인 페이지 진입");
				
				model.addAttribute("ls", cocktailService.likeSelect2());
			
			}
    //explain페이지 이동
			@RequestMapping(value = "/explain", method = RequestMethod.GET)
			public void explainPageGet() {
				Logger.info("explain 페이지 진입");
			
			}
	
	//페이지 이동
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void contactPageGet() {
		Logger.info("contact 페이지 진입");
	
	}
	
	//keyword 페이지 이동
		@RequestMapping(value = "/keyword", method = RequestMethod.GET)
		public void keywordPageGet() {
			Logger.info("keyword 페이지 진입");
		
		}
		
	//cocktailList 페이지 이동
		@RequestMapping(value = {"/cocktailList", "/cocktailList2"}, method = RequestMethod.GET)
		public void cocktailListGet(CocktailCriteria cri, Model model) throws Exception{
			Logger.info("칵테일 목록 페이지 접속" + cri);
			
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
		
		//cocktailMbti 페이지 이동
				@RequestMapping(value = "/cocktailMbti", method = RequestMethod.GET)
				public void cocktailMbtiGet(CocktailCriteria cri, Model model, String mbti) throws Exception{
					Logger.info("칵테일 목록 페이지 접속" + cri);
					
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
				
				//cocktailSeason 페이지 이동
				@RequestMapping(value = "/cocktailSeason", method = RequestMethod.GET)
				public void cocktailSeasonGet(CocktailCriteria cri, Model model, String season) throws Exception{
					Logger.info("칵테일 목록 페이지 접속" + cri);
					
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
				
				//cocktailRelation 페이지 이동
				@RequestMapping(value = "/cocktailRelation", method = RequestMethod.GET)
				public void cocktailRelationGet(CocktailCriteria cri, Model model, String relation) throws Exception{
					Logger.info("칵테일 목록 페이지 접속" + cri);
					
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
		
				/* 칵테일 상세 페이지 */
				@GetMapping("/service")
				public void cocktailGetInfoGET(int cocktailNo, CocktailCriteria cri, Model model, String cocktailName) throws Exception {
					
					Logger.info("cocktailDetail......." + cocktailNo);
					
					/* 칵테일 목록 페이지 정보 */
					model.addAttribute("cri", cri);
					
					/* 선택 칵테일 정보 */
					model.addAttribute("cocktailInfo", cocktailService.cocktailGetDetail(cocktailNo));
					
					/* 추천부분 */
					String filecsv = "C:/Users/openj/Desktop/PythonWorkSpace/algorithm/csv_test.csv";
				     
				     File file = null;
				     //BufferedWriter bw = null;
				          
				     
				     try {
				        System.out.println("성공1");
				        file = new java.io.File(filecsv);
				       // bw = new BufferedWriter(new FileWriter(file));
				        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "UTF-8"));//"MS949
				        System.out.println("성공2");
				        
				        bw.write("ctest");
				        System.out.println("성공3");
				        
				        bw.write("\n");
				        System.out.println("성공4");
				        
				        bw.write(cocktailName);
				        System.out.println("성공5");
				        bw.flush();
				        bw.close();
				        
				        
				     }catch(Exception e) {
				        System.out.println("실패");
				        e.printStackTrace();
				     }
				     
				    
				   //runtime 생성 
				     Runtime rt =Runtime.getRuntime();
				     //python 실행파일 주소값 가져옴
				      String exeFile ="C:/Users/openj/Desktop/Pythonworkspace/dist/cocktail_recommand/cocktail_recommand.exe";
				      //프로세스 생성
				      Process p;
				      //프로세스 진행
				      try {p = rt.exec(exeFile);
				          p.waitFor();
				          } catch(Exception e) { e.printStackTrace();}
				      
				     				     
				      // 출력부분
				      String line = "";		//엑셀데이터 한줄씩 담을 변수
				      String[] arr = {"","","","",""};	//칵테일이름만 모아서 저장할 배열
				      int i=0;
				      
				      List<List<String>> ret = new ArrayList<List<String>>();
				        BufferedReader br = null;
				        try {
				            br = Files.newBufferedReader(Paths.get("C:/Users/openj/Desktop/Pythonworkspace/algorithm/weneed.csv"));
				            line = br.readLine();
				            line = br.readLine();	//엑셀의 3행부터 가져옴 (1행은 칼럼명, 2행은 자기자신이라 패스)
				            
				            while((line = br.readLine()) != null) {
				            	System.out.println(i+"번째 데이터  : " + line);
				            	arr[i] = line.split(",")[1];	//칵테일이름만 배열에 저장
				            	i++;
				            }
				            for (int j = 0; j < arr.length; j++) {	// 배열 출력
								System.out.println("arr[" + j + "] : " + arr[j]);
							}
				        } catch (FileNotFoundException e) {
				            e.printStackTrace();
				        }catch (IOException e) {
				            e.printStackTrace();
				        }finally {
				            try {
				                if(br != null) {
				                    br.close();
				                }
				            }catch(IOException e) {
				                e.printStackTrace();
				            }
				        }
				        String recommand = String.join(",", arr);		//arr배열 데이터를 하나의 문자열로 합침
				        System.out.println("최종 완성된 문자열 : " + recommand);	
				        List list = cocktailService.recommandGetList(recommand);
				        model.addAttribute("recommand", list); //앞에는 이름설정, 뒤에는 위에서 선언한 변수
				}
				
				
				/* (어드민) 칵테일수정 */
				@GetMapping("/admin/cocktailModify")
				public void cocktailGetInfo2GET(int cocktailNo, CocktailCriteria cri, Model model) throws Exception {
					
					Logger.info("cocktailModify......." + cocktailNo);
					
					/* 칵테일 목록 페이지 정보 */
					model.addAttribute("cri", cri);
					
					/* 선택 칵테일 정보 */
					model.addAttribute("cocktailInfo", cocktailService.cocktailGetDetail(cocktailNo));
				}
		
		/* 리뷰 쓰기 */
		@GetMapping("/replyEnroll/{memberId}")
		public String replyEnrollWindowGET(@PathVariable("memberId")String memberId, int cocktailNo, Model model) {
			CocktailVO cocktail = cocktailService.getCocktailNoName(cocktailNo);
			model.addAttribute("cocktailInfo", cocktail);
			model.addAttribute("memberId", memberId);
			
			return "/replyEnroll";
		}
		
		/* 리뷰 수정 팝업창 */
		@GetMapping("/replyUpdate")
		public String replyUpdateWindowGET(ReplyDTO dto, Model model) {
			CocktailVO book = cocktailService.getCocktailNoName(dto.getCocktailNo());
			model.addAttribute("cocktailInfo", book);
			model.addAttribute("replyInfo", replyService.getUpdateReply(dto.getReplyId()));
			model.addAttribute("memberId", dto.getMemberId());
			
			return "/replyUpdate";
		}
		
		/* 이미지 출력 */
		@GetMapping("/display")
		public ResponseEntity<byte[]> getImage(String fileName){
			
			Logger.info("getImage()........" + fileName);
			
			File file = new File("c:\\upload\\" + fileName);
			
			ResponseEntity<byte[]> result = null;
			
			try {
				
				HttpHeaders header = new HttpHeaders();
				
				header.add("Content-type", Files.probeContentType(file.toPath()));
				
				result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
				
			}catch (IOException e) {
				e.printStackTrace();
			}
			
			return result;
			
		}
		
		/* 이미지 정보 반환  */
		@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
		public ResponseEntity<List<CocktailImageVO>> getAttachList(int cocktailNo){
			
			Logger.info("getAttachList.........." + cocktailNo);
			
			return new ResponseEntity<List<CocktailImageVO>>(attachMapper.getAttachList(cocktailNo), HttpStatus.OK);
			
		}	
		
		//keyword 페이지 이동
		//		@RequestMapping(value = "/myinfor", method = RequestMethod.GET)
		//		public void myinforPageGet() {
		//			Logger.info("myinfor 페이지 진입");
		//		
		//		}
		
		
		
}
