package kr.co.controller;

import java.util.Arrays;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 직원 등록 작성뷰
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception {
		logger.info("writeView");
	}
	
	// 직원 등록 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception {
		logger.info("write");
		service.write(boardVO);
		return "redirect:/board/list";
	}
	
	// 직원 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		logger.info("list");
		model.addAttribute("list", service.list());
		return "board/list";
	}
	
	// 직원 정보 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception {
		logger.info("read");
		model.addAttribute("read", service.read(boardVO.getEmployee_id()));
		return "board/readView";
	}
	
	// 직원 정보 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, Model model) throws Exception {
		logger.info("updateView");
		model.addAttribute("update", service.read(boardVO.getEmployee_id()));
		return "board/updateView";
	}
	
	// 직원 정보 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception {
		logger.info("update");
		service.update(boardVO);
		return "redirect:/board/list";
	}
	
	// 게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam(value = "empIdList[]") List<String> empIdList) throws Exception {
		logger.info("delete");
	    System.out.println(empIdList);
	    service.delete(empIdList);
	    return "redirect:/board/list"; 
	}


}
