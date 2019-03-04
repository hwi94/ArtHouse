package com.itbank.artHouse.serviceCenter;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class QnAController {
	@Autowired
	QnADAO qnaDao;
	
	
	
	String dbInputSplit = "";

	@RequestMapping("serviceCenter/questionUpload.do")
	/*파일을 멀티파트서블릿리퀘스트로받음.*/
	public String requestupload1(QnADTO2 qnaDto2 , MultipartHttpServletRequest mtfRequest) throws Exception{
		
	
	System.out.println("무엇이넘어왔는지볼까요 ^^?");
	System.out.println("1번정보동의란 : "+qnaDto2.getInformationConsent());
	System.out.println("2번이름란 : "+qnaDto2.getName());
	System.out.println("3번이메일란 : "+qnaDto2.getEmail());
	System.out.println("4번모바일1 : "+qnaDto2.getMobile1());
	System.out.println("5번모바일2 : "+qnaDto2.getMobile2());
	System.out.println("6번모바일3 : "+qnaDto2.getMobile3());
	System.out.println("7번지역 : "+qnaDto2.getAreaSelectBox());
	System.out.println("8번영화관 : "+qnaDto2.getSelectMovieTheater());
	System.out.println("9번문의유형 : "+qnaDto2.getQuestionType());
	System.out.println("10번내용 : "+qnaDto2.getContents());
	System.out.println("11번제목 : "+qnaDto2.getTitle());
	
	
	
	
	
	
		
	/*현재 mtfRequest 에는 파일이름, 파일. 여러가지 속성이들어있음. 키맵형태로 들어있다.*/
	/* 이름을먼저뽑아오겠다. */
	List<MultipartFile> fileList = mtfRequest.getFiles("file");
	String path = "D:\\ArtHouse\\workspace\\ArtHouse\\src\\main\\webapp\\resources\\img\\";
	/* 파일리스트의 값이 null 일때는 아래를 실행하지않겠다. */
	
			System.out.println("파일리스트 사이즈는? : " + fileList.size());
			/*파일이름*/
			System.out.println("1번파일이름 : " + fileList.get(0).getOriginalFilename());
			System.out.println("2번파일이름 : " + fileList.get(1).getOriginalFilename());
			System.out.println("3번파일이름 : " + fileList.get(2).getOriginalFilename());
			System.out.println("4번파일이름 : " + fileList.get(3).getOriginalFilename());
			
	
			int i = 0;
	/*저장경로*/
	for (MultipartFile mf : fileList) {
		
		/* 파일리스트가 null이아닐때만 실행시켜라 */
		if((fileList.get(i).getOriginalFilename()=="")){
			continue;
		}else{
		
		/*원본파일명*/
		String originFileName = mf.getOriginalFilename(); 
		/*파일사이즈*/
		long fileSize = mf.getSize(); 					
		System.out.println("원본파일이름 :"+originFileName);
		System.out.println("파일용량 : "+fileSize);
		/* 곂치지않기위한 새로운 저장이름 */
		String saveFile = path + System.currentTimeMillis() + originFileName;
		System.out.println("새로운저장이름:"+saveFile);
		dbInputSplit =  dbInputSplit +","+saveFile;
		
		try{
			/* 파일저장완료 */
			mf.transferTo(new File(saveFile));
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
			i++;
		}
	}
	
		QnADTO qnaDto = new QnADTO();
		
		System.out.println("DB저장이름(묶인파일) :" + dbInputSplit);
		System.out.println("진짜 DTO에 값을넣겠습니다.");
		qnaDto.setInformationConsent(qnaDto2.getInformationConsent());
		qnaDto.setName(qnaDto2.getName());
		qnaDto.setTel(qnaDto2.getMobile1()+"-"+qnaDto2.getMobile2()+"-"+qnaDto2.getMobile3());
		qnaDto.setEmail(qnaDto2.getEmail());
		qnaDto.setAreaSelectBox(qnaDto2.getAreaSelectBox());
		qnaDto.setSelectMovieTheater(qnaDto2.getSelectMovieTheater());
		qnaDto.setQuestionType(qnaDto2.getQuestionType());
		qnaDto.setContents(qnaDto2.getContents());
		
		/*사진을 db에넣을때 한문장으로 넣는다. sekfnks , sekfesl , sekfnsels , sefnksl , seknfls ,*/
		qnaDto.setAttachments(dbInputSplit);
		
		/* dao값넣기 */
		qnaDao.QnAUpload(qnaDto);
	
	

	
	
	return "serviceCenter/complete";
	}
}
