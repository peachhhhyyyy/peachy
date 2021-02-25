package peachy.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import peachy.md.domain.Content;
import peachy.md.service.ContentService;

@Controller
@RequestMapping
@Log4j
public class ContentController {
   @Autowired
   private ContentService service;
   
   @GetMapping("/write.do")
   public String write() {
      return "write";
   }
   @PostMapping("/write.do")
   public String write(Content content) {
      service.insertS(content);
      return "redirect:index.do";
   }
   @GetMapping("/index.do")
   public ModelAndView list() {
	   List<Content> list = service.listS();
	   ModelAndView mv = new ModelAndView("index", "list", list);
	   return mv;
   }
   @GetMapping("/update.do")
   public ModelAndView update(@RequestParam long seq) {
     Content update = service.updateS(seq);
     return new ModelAndView("update", "update", update);
   }
   @PostMapping("/update.do")
   public String updateOk(Content content) {
     service.updateOkS(content);
     return "redirect:index.do";
   }
   @GetMapping("/del.do")
   public String delete(@RequestParam long seq) {
	   service.deleteS(seq);
	   return "redirect:index.do";
   }
}