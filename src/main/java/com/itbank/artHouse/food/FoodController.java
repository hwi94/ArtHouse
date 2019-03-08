package com.itbank.artHouse.food;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FoodController {
   
   @Autowired
   FoodDAO dao;
   
   @RequestMapping("selectAll.do")   //상품페이지 (회원, 비회원 가능)
   public String selectAll(Model model) throws Exception{
      List<FoodDTO> list = dao.selectAll();
      model.addAttribute("list", list);
      return "food/test";
   }
   
   @RequestMapping("/adminFood")   //db에 저장된 상품을 가져다 관리자 페이지에다 뿌려주는 컨트롤러
   public String selectAlladmin(Model model,HttpSession session){
         String id = (String)session.getAttribute("id");
      
         List<FoodDTO> list = dao.selectAll();
         model.addAttribute("list", list);
         return "food/adminFoodlist";
   }
   
   
   
   @RequestMapping("/userFood")   
   public String selectAllUser(Model model,HttpSession session){
         String id = (String)session.getAttribute("id");
      
         List<FoodDTO> list = dao.selectAll();
         model.addAttribute("list", list);
         return "food/foodlist";
   }
   
   @RequestMapping("/foodDetail")    //상품 상세페이지 컨트롤러
   public String selectFoodDetail(Model model){
      List<FoodDTO> list = dao.selectAll();
      model.addAttribute("list", list);
      return "food/foodDetail";
   }
   
   
   @RequestMapping("adminInsert.do")   //관리자가 상품을 db에 insert하고자 할경우
   public String adminInsert(FoodDTO dto, Model model, MultipartHttpServletRequest mtfRequest){
      System.out.println("------------------");
      System.out.println(dto.getCode());
      System.out.println(dto.getName());
      System.out.println(dto.getCategory());
      System.out.println(dto.getPrice());
      System.out.println(dto.getImg());
      
      String path = "C:\\Users\\user\\git\\ArtHouse\\src\\main\\webapp\\resources\\img\\food\\";
      
      MultipartFile mf = mtfRequest.getFile("file");
      System.out.println("파일 이름: " +mf.getOriginalFilename());
      dto.setImg(mf.getOriginalFilename());
      dao.insert(dto);
      System.out.println("---------------");
      System.out.println("저장한 코드명: "+dto.getCode());
      System.out.println("저장한 상품명: "+dto.getName());
      System.out.println("저장한 카테고리: "+dto.getCategory());
      System.out.println("저장한 가격: "+dto.getPrice());
      System.out.println("저장된 이미지 파일명: " + dto.getImg());
      System.out.println("---------------");
      
      
      //파일사이즈
      long fileSize = mf.getSize();                
      System.out.println("파일용량 : "+mf.getSize());
      // 곂치지않기위한 새로운 저장이름 
      String saveFile = path + System.currentTimeMillis() + mf.getOriginalFilename();
      System.out.println("새로운저장이름:"+saveFile);
      
      try {
         mf.transferTo(new File(saveFile));  //파일을 내가 설정해둔 path(경로)에다 저장
      } catch (IllegalStateException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }

      
      return "food/adminInsert";
      
   }
   
   @RequestMapping("modify.do")
   public String adminModify(Model model, HttpServletRequest request,FoodDTO dto){
      String code = request.getParameter("code");
       List<FoodDTO> list = (List<FoodDTO>) dao.select(dto);
       model.addAttribute("list", list);
      
      return "food/modifyFood";
   }
   
   @RequestMapping("modify2.do")    //수정페이지 내의 폼을 통한 수정버튼 클릭시 db업데이트 실행 
   public String adminModify2(Model model, HttpServletRequest request,FoodDTO dto, MultipartHttpServletRequest mtfRequest){
      String code = request.getParameter("code");
      System.out.println("---- 넘어온 dto값 확인 ----");
      System.out.println(dto.getCode());
      System.out.println(dto.getName());
      System.out.println(dto.getCategory());
      System.out.println(dto.getPrice());
      System.out.println("---------------------");
      
      String path = "C:\\Users\\user\\git\\ArtHouse\\src\\main\\webapp\\resources\\img\\food\\";   //이미지가 저장될 경로 설정
      
      MultipartFile mf = mtfRequest.getFile("file");
      System.out.println("파일 이름: " +mf.getOriginalFilename());
      dto.setImg(mf.getOriginalFilename());
      System.out.println("---------------");
      System.out.println("저장한 코드명: "+dto.getCode());
      System.out.println("저장한 상품명: "+dto.getName());
      System.out.println("저장한 카테고리: "+dto.getCategory());
      System.out.println("저장한 가격: "+dto.getPrice());
      System.out.println("저장된 이미지 파일명: " + dto.getImg());
      System.out.println("---------------");
      
      
      //파일사이즈
      long fileSize = mf.getSize();                
      System.out.println("파일용량 : "+mf.getSize());
      // 곂치지않기위한 새로운 저장이름 
      String saveFile = path /*+ System.currentTimeMillis()*/ + mf.getOriginalFilename();
      System.out.println("새로운저장이름:"+saveFile);
      
      try {
         mf.transferTo(new File(saveFile));  //파일을 내가 설정해둔 path(경로)에다 저장
      } catch (IllegalStateException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }
      
      dto.setImg(mf.getOriginalFilename());    //저장될 파일이름
      dao.update(dto);    //db 연동하여 update문 실행
      
      return "food/modifySuccess";
   }
   
   @RequestMapping("adminDelete.do")    //수정페이지 내의 폼을 통한 수정버튼 클릭시 db업데이트 실행 \
   public String adminDelete(FoodDTO dto){
      System.out.println("---- 삭제 요청 ----");
      System.out.println(dto.getCode());
      System.out.println(dto.getName());
      System.out.println(dto.getCategory());
      System.out.println(dto.getPrice());
      dao.delete(dto);
      return "food/deleteSuccess";
   }
   
   
}