package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.NoticeService;



@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(NoticeController.class);

//	@Inject
//	NoticeService service;
	
	// 공지사항 목록 조회
	@RequestMapping(value = "/n_list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		logger.info("n_list");
		//model.addAttribute("list",service.list());
		return "notice/n_list";
	}
}
