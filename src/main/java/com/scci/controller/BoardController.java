package com.scci.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.scci.service.BoardService;
import com.scci.vo.NoticeVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/noticePage", method = RequestMethod.GET)
	public String noticePage(NoticeVO noticeVO, Model model) {
		List<NoticeVO> notice = boardService.getNotice(noticeVO);
		model.addAttribute("notice", notice);
		return "board/noticePage";
	}

	@RequestMapping("/noticeForm")
	public String boardForm() {
		return "board/noticeForm";
	}
	@RequestMapping(value="/saveBoard",method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("NoticeVO")NoticeVO noticeVO,
			RedirectAttributes rttr) {
		boardService.getNoticeInsert(noticeVO);
		return "redirect:/board/noticePage";
	}
}
