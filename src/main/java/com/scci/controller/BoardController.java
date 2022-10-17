package com.scci.controller;

import java.util.List;

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
	public String noticePage(@ModelAttribute NoticeVO noticeVO, Model model) {
		List<NoticeVO> notice = boardService.getNotice(noticeVO);
		model.addAttribute("notice", notice);
		return "board/noticeList";
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
	
	@RequestMapping(value="/updateNotice", method = RequestMethod.POST)
	public String updateNotice(Model model, NoticeVO noticeVO) {
		int result = boardService.updateNotice(noticeVO);
		return "redirect:/board/noticePage";
	}
	
//	@RequestMapping(value="/noticeContent", method = RequestMethod.GET)
//	public String getNoticeContent(Model model, int noticeId) {
//		NoticeVO pageContent = boardService.getNoticeContent(noticeId);
//		model.addAttribute("pageContent", pageContent);
//		return "board/noticeContent";
//	}
	// 수정 전 (아직 해결안됨)
	@RequestMapping(value="/noticeContent", method = RequestMethod.GET)
	public String getNoticeContent(Model model, @RequestParam("noticeId")int noticeId) {
		model.addAttribute("notice", boardService.getNoticeContent(noticeId));
		return "board/noticeContent";
	}
}
