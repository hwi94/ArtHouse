package com.itbank.artHouse.serviceCenter;

import java.io.File;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class QnAController2 {
	@Autowired
	QnADAO qnaDao;
	
	
	
	String dbInputSplit = "";

	@RequestMapping("serviceCenter/testUpload.do")
	/*파일을 멀티파트서블릿리퀘스트로받음.*/
	public String requestupload1(MultipartHttpServletRequest mtfRequest) throws Exception{
		
	Random random = new Random();
	String totalRandNum="";
	
	for (int i = 0; i < 5; i++) {
		String randNumber = new String();
		int rand = random.nextInt(100);
		randNumber = Integer.toString(rand);
		totalRandNum=totalRandNum+randNumber;
	}
	
	
		
	/*현재 mtfRequest 에는 파일이름, 파일. 여러가지 속성이들어있음. 키맵형태로 들어있다.*/
	/* 이름을먼저뽑아오겠다. */
	List<MultipartFile> fileList = mtfRequest.getFiles("file");
	/*파일이름*/
	System.out.println(fileList.get(0).getOriginalFilename());
	System.out.println(fileList.get(1).getOriginalFilename());
	System.out.println(fileList.get(2).getOriginalFilename());
	System.out.println(fileList.get(3).getOriginalFilename());
	/*저장경로*/
	String path = "D:\\SpringProject\\workspace\\RdsTest\\src\\main\\webapp\\resources\\img\\";
	for (MultipartFile mf : fileList) {
		/*원본파일명*/
		String originFileName = mf.getOriginalFilename(); 
		/*파일사이즈*/
		long fileSize = mf.getSize(); 					
		System.out.println("원본파일이름 :"+originFileName);
		System.out.println("파일용량 : "+fileSize);
		/* 곂치지않기위한 새로운 저장이름 */
		String saveFile = path + System.currentTimeMillis() + originFileName;
		dbInputSplit = dbInputSplit +","+ saveFile;
		
		try{
			/* 파일저장완료 */
			mf.transferTo(new File(saveFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
			/*사진을 db에넣을때 한문장으로 넣는다. sekfnks , sekfesl , sekfnsels , sefnksl , seknfls ,*/
			System.out.println("db저장이름 : "+dbInputSplit);
			
			/* dao값넣기 */
	
	
	

	
	
	return "serviceCenter/complete";
	}
}
