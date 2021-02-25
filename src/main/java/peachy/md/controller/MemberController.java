package peachy.md.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;
import peachy.md.domain.Content;
import peachy.md.domain.Member;
import peachy.md.model.LoginCase;
import peachy.md.service.ContentService;
import peachy.md.service.MemberService;

@Controller
@RequestMapping
@Log4j
public class MemberController {
   @Autowired
   private MemberService service;
   @Autowired
   private ContentService ContentService;
   
   @GetMapping("/login.do")
   public String login() {
      return "redirect:index.do";
   }
   @PostMapping("/login.do")
   public String login(Member member, Model model, 
		   HttpSession session) throws Exception {
      int m = service.loginS(member);
      if (m == LoginCase.PASS) {
          log.info("로그인 성공");
          Member loginPassUser = service.selectS(member);
          List<Content> list = ContentService.listS();
          model.addAttribute("list", list);
          model.addAttribute("loginPassUser", loginPassUser);
          session.setAttribute("loginPassUser", loginPassUser);
          return "/index";
      }
      if(m == LoginCase.NO_ID || m == LoginCase.NO_PWD) {
    	  log.info("로그인 실패");
    	  model.addAttribute("m", m);
      }
      return "/msg";
   }
   @PostMapping("/register.do")
   public String register(Member member) {
      service.registerS(member);
      return "redirect:index.do";
   }
   @RequestMapping("/logout.do")
   public String logout(HttpSession session) throws Exception {
      session.invalidate();
      return "redirect:index.do";
   }
}