package com.itbank.artHouse.serviceCenter;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class NoticeController {

	@Autowired
	NoticeDAO dao;
	
	
	
	
	/* 공지사항 - 등록 페이지이동 */
	@RequestMapping("serviceCenter/noticeUploadPage.do")
	public String noticeUploadPage(){
		return "serviceCenter/noticeUpload";
	}
	
	
	
	/* 공지사항 - 제목중복처리 */
	@RequestMapping("serviceCenter/overlapCheckNoticeTitle.do")
		@ResponseBody
		public Map<Object, Object> OverlapCheckTitle(@RequestBody @RequestParam("title")String title){
			System.out.println("여기는 중복체크를위한 컨트롤러임 들어왔니?");
			System.out.println("들어온 title값:"+title);
			Map<Object , Object> map = new HashMap<Object , Object>();
			
			List<NoticeDTO> count = dao.selectCount(title);
			System.out.println("count값은? : " +count.size());
			
			if(count.size() > 0){
				map.put("result", "overlap");
			}else{
				map.put("result", "unOverlap");
			}
			System.out.println(map.get("result"));
			
			return map;
		}
	
	
	
	/* 공지사항 - 등록 */
	@RequestMapping("serviceCenter/noticeUpload.do")
	public String noticeUpload(NoticeDTO dto, Model model) throws Exception{
		System.out.println("여기는컨트롤러 내가받은 title = " + dto.getTitle());
		System.out.println("여기는컨트롤러 내가받은 titleNo = " + dto.getTitleNo());
		System.out.println("여기는컨트롤러 내가받은 MovieTheaters = " + dto.getMovieTheaters());
		System.out.println("여기는컨트롤러 내가받은 UploadDate = " + dto.getUploadDate());
		System.out.println("여기는컨트롤러 내가받은 Contents = " + dto.getContents());
		dao.insert(dto);
		model.addAttribute("dto",dto);
		return "serviceCenter/complete";
	}
	
	
	/* 공지사항 - 리스트가져오기 + 페이지전환 */
	@RequestMapping("serviceCenter/selectNoticeList.do")
	public String noticeCount(Model model,@RequestParam(value="pageNum",defaultValue="1")int page){	// > page = 초기 1번페이지
		System.out.println("페이지숫자"+page);
		List list =  dao.selectListAll();
		int total = list.size(); 					// 전체 게시물수 
		int countPage = 10; 							// 한페이지당보여줄게시물수 5개.
		int block = 5;								// 페이지목록 5개만.
		/*int startBlock = 5 * 1 + 1; 				//시작블록.
		int endBlcok = 5 * 2;*/
		int startPosts = (page-1) * countPage + 1;	// 1번버튼부터시작한다( 왜냐하면 초기값이 1이니까)
		int endPosts = page * countPage; 			// 1~ 10버튼까지보여준다.
		System.out.println("시작값:" + startPosts + "마지막값:"+endPosts);
		List list2 = dao.selectCountList(startPosts,endPosts); //dao로 들어가자.
		
		int pageSu = total / countPage;
		System.out.println("토탈 나누기 보여줄페이지 = "+pageSu);
		int plusPageSu = total % countPage;
		if(plusPageSu > 0){
			pageSu++;
		}
		/* 총페이지수가 보드페이지넘버보다 클때 */
		/*이전버튼을 생성해줌.*/
		System.out.println("찍어내야할페이지의갯수= "+pageSu);
		System.out.println("나머지수 "+pageSu);
		System.out.println("보여줄게시글넘버첫번째"+ startPosts);
		System.out.println("보여줄게시글넘버마지막"+ endPosts);
		model.addAttribute("page",page);	//초기페이지넘기기 그다음부터는 유동적임
		model.addAttribute("pageSu",pageSu);	//
		model.addAttribute("list2",list2);
		model.addAttribute("block",block);
		
		
		return "serviceCenter/notice";
	}
		
	
	/* 공지사항 - 내용 (제목클릭시 내용보여줌)*/
		@RequestMapping("serviceCenter/selectNoticeContents.do")
		public String showNoticeContents(Model model,@RequestParam("searchContents")String title){
			System.out.println("들어오긴하니??");
			NoticeDTO noticeDTO = dao.selectOne(title);
			System.out.println("제목:"+noticeDTO.getTitle());
			System.out.println("극장:"+noticeDTO.getMovieTheaters());
			System.out.println("내용:"+noticeDTO.getContents());
			System.out.println("번호:"+noticeDTO.getTitleNo());
			System.out.println("날짜:"+noticeDTO.getUploadDate());
			model.addAttribute("noticeDTO",noticeDTO);
			return "serviceCenter/noticeContents";
		}
		
		/* 공지사항 - 삭제 */
		@RequestMapping("serviceCenter/selectNoticeDelete.do")
		
		public String deleteNoticeList(@RequestParam("title")String title , Model model){
			System.out.println("넘어온 타이틀값:"+title);
			dao.deleteNoticeList(title);
			
			int page = 1;
			List list =  dao.selectListAll();
			int total = list.size(); 					// 전체 게시물수 
			int countPage = 10; 							// 한페이지당보여줄게시물수 5개.
			int block = 5;								// 페이지목록 5개만.
			int startPosts = (page-1) * countPage + 1;	// 1번버튼부터시작한다( 왜냐하면 초기값이 1이니까)
			int endPosts = page * countPage; 			// 1~ 10버튼까지보여준다.
			System.out.println("시작값:" + startPosts + "마지막값:"+endPosts);
			List list2 = dao.selectCountList(startPosts,endPosts); //dao로 들어가자.
			
			int pageSu = total / countPage;
			System.out.println("토탈 나누기 보여줄페이지 = "+pageSu);
			int plusPageSu = total % countPage;
			if(plusPageSu > 0){
				pageSu++;
			}
			/* 총페이지수가 보드페이지넘버보다 클때 */
			/*이전버튼을 생성해줌.*/
			
			model.addAttribute("pageSu",pageSu);	
			model.addAttribute("list2",list2);
			model.addAttribute("block",block);
			
			
			
			//삭제완료후 다시 공지사항 1페이지를 보여준다.
			
			return "serviceCenter/notice";
		}
		
		
		
		
		
		
		
		
		/*메인페이지 > 공지사항들어올때,*/
		@RequestMapping("serviceCenter/clientSound.do")
		public String goClientSound(){
			System.out.println("컨틑롤러페이지입니다.");
			System.out.println("서비스페이지로이동합니다.");
			return "serviceCenter/clientSound";
		}
		
		
		
		
		
		
		
		
		
		
		
		/* 1:1공지사항 작성페이지 */
		@RequestMapping("serviceCenter/uploadQuestion.do")
		public String uploadQuestion(){
			System.out.println("여기는 컨트롤러이고 공지사항을띄워주는 컨트롤러야 잘들어왔니??");
			return "serviceCenter/question2";
		}
		
		
		
		
		
		
		
	
	
	
	


	
	
		
	}

