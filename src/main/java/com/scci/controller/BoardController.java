package com.scci.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scci.service.BoardService;
import com.scci.vo.NoticeVO;

@Controller
@RequestMapping("/board")
public class BoardController {
//	@Autowired
//	private BoardService boardService;
	@RequestMapping(value = "/noticePage", method=RequestMethod.GET)
		public String noticePage(@RequestParam Map<String, String> param, Model model) {
//		List<NoticeVO> notice = boardService.getNoticePage(param);
//		model.addAttribute("notice", notice);
			return "board/noticePage";
		}
}
