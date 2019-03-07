package com.itbank.artHouse.serviceCenter;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class QnAController {
	@Autowired
	QnADAO qnaDao;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	
	
	String dbInputSplit = "";

	@RequestMapping("serviceCenter/questionUpload.do")
	/*파일을 멀티파트서블릿리퀘스트로받음.*/
	public String requestupload1(QnADTO2 qnaDto2 , MultipartHttpServletRequest mtfRequest ) throws Exception{
		
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
		qnaDto.setTitle(qnaDto2.getTitle());
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
	
	/* 1:1문의 - 리스트조회(관리자로그인시) */
	@RequestMapping("serviceCenter/selectQNAList.do")
	public String selectNoticeList(Model model , @RequestParam(value="QNAPageNum",defaultValue="1")int page){ //디폴트페이지 1
		System.out.println("넘어온page값 ? : "+page);
		List list = qnaDao.selectQnAList();
		int total = list.size();		//전체게시물수
		int countPage = 10;				//한페이지당보여줄게시물
		int block = 5;					//페이지목록5개
		int startPosts = (page-1) * countPage + 1;	//1번부터 시작 (초기값 1)
		int endPosts = page * countPage;			//끝페이지는 10이될것임..
		List list2 = qnaDao.selectCountList(startPosts,endPosts);
		int pageSu = total / countPage;
		int plusPageSu = total % countPage;
		
		if(plusPageSu > 0){
			pageSu++;
		}
		
		model.addAttribute("page",page);
		model.addAttribute("pageSu",pageSu);
		model.addAttribute("list",list2);
		return "serviceCenter/questionList";
	}
	
	
	
	/* 1:1문의 - 제목클릭시해당제목의항목들을보여준다 */
	@RequestMapping("serviceCenter/selectQNAContents.do")
	public String selectQNAContents(@RequestParam("title")String title , Model model){
		QnADTO qnaDTO = qnaDao.selectOne(title);

		
		String totalUploadFile = qnaDTO.getAttachments();
		System.out.println(qnaDTO.getAttachments()); // null
		HashMap<String,Object> map = new HashMap<>();
		
		
		if(totalUploadFile!=null){
				
			String[] array = totalUploadFile.split(",");
			String[] MachinedArray = new String[totalUploadFile.split(",").length]; // 가공된주소를 다시넣어준다		
			String[] MachinedArray2 = new String[totalUploadFile.split(",").length]; // 가공된주소를 다시넣어준다		
		
		for (int i = 1; i < totalUploadFile.split(",").length; i++) {
			MachinedArray[i]=array[i].substring(array[i].lastIndexOf("\\"));
			MachinedArray2[i] = "../resources/img/"+MachinedArray[i].substring(1);
			System.out.println(("조립된이름:"+MachinedArray2[i]));
			map.put("uploadFile"+i, MachinedArray2[i]);
			
		} //for
	} //if
			model.addAttribute("uploadMap",map);
			model.addAttribute("qnaDTO",qnaDTO);
			return "serviceCenter/questionContents";
	}
	
	
	/* 1:1문의 - 답변하기페이지 */
	@RequestMapping("serviceCenter/answerPage.do")
	public String answer(@RequestParam("title")String title , Model model){
		QnADTO qnaDTO = qnaDao.selectOne(title);
		model.addAttribute("qnaDTO",qnaDTO);
		return "serviceCenter/questionAnswer";
	}
	
	
	/* 1:1문의 - 메일 답변완료 > 답변완료와동시에 행과 파일을 삭제한다. */
	@RequestMapping("serviceCenter/answerComplete.do")
	public String answerComplete(@RequestParam("sender")String sender,
			@RequestParam("receiver")String receiver,
			@RequestParam("title")String title,
			@RequestParam("hiddenTitle")String hiddenTitle,
			@RequestParam("contents")String contents){
		
		System.out.println("1. 메일답변 컨트롤러로 잘 들어갔니?");
		/* 답변이 완료되었다면 파일 먼저 삭제합니다. */
		QnADTO qnaDTO = qnaDao.selectOne(hiddenTitle); 
		System.out.println(qnaDTO.getContents());
		String[] result = qnaDTO.getAttachments().split(",");
		
		for (int i = 0; i < result.length; i++) {
			File file = new File(result[i]);
			if(file.exists()){
				if(file.delete()){
					System.out.println("파일삭제성공");
				}else{
					System.out.println("파일삭제실패");
				}
			}else{
				System.out.println("파일이 존재하지않습니다.");
			}
		}
		/* 파일이삭제되었다면, 행을삭제해주세요 */
		qnaDao.delete(hiddenTitle);
		System.out.println("행이 삭제되었습니다.");
		
		
		/* 답변 - 이메일 */
		MimeMessagePreparator preparator = new MimeMessagePreparator(){
			@Override
			public void prepare(MimeMessage mimeMessage)throws Exception{
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true,"UTF-8");
				helper.setFrom(sender);
				helper.setTo(receiver);;
				helper.setSubject(title);
				helper.setText(contents,true);
			}
		};
		mailSender.send(preparator);
	
		return "serviceCenter/questionAnswerComplete";
	}
	
	
	
	
}
