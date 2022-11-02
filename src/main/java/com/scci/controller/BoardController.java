package com.scci.controller;

import java.security.Principal;
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
import com.scci.vo.FaqVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/noticePage", method = RequestMethod.GET)
	public String noticePage(@ModelAttribute NoticeVO noticeVO, Model model, Principal principal) {
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

	
	@RequestMapping(value="/updateNotice", method = RequestMethod.POST)
	public String updateNotice(Model model, NoticeVO noticeVO) {
		int result = boardService.updateNotice(noticeVO);
		return "redirect:/board/noticePage";
	}

	
	@RequestMapping(value="/noticeContent", method = RequestMethod.GET)
	public String getNoticeContent(Model model, @RequestParam("noticeId") int noticeId) {
		model.addAttribute("notice", boardService.getNoticeContent(noticeId));
		return "board/noticeContent";
	}

	@RequestMapping(value="/deleteNotice", method = RequestMethod.DELETE)
	public String deleteNotice(Model model, NoticeVO noticeVO) {
		int result = boardService.deleteNotice(noticeVO);
		return "redirect:/board/noticePage";
	}
	

// --------------------------------------------------------------------------------------
	
	@RequestMapping(value="/boardFAQ", method = RequestMethod.GET)
	public String getboardFAQ(Model model) {
		model.addAttribute("FAQ", boardService.getBoardFAQ());
		return "board/boardFAQ";
	}
	@RequestMapping(value="/boardFAQupdate", method = RequestMethod.GET)
	public String getFAQContent(Model model, @RequestParam("faqId") int faqId) {
		model.addAttribute("boardFAQupdate", boardService.getFAQContent(faqId));
		return "board/boardFAQupdate";
	}
	@RequestMapping(value="/boardFAQInsert", method = RequestMethod.GET)
	public String getFAQInsert() {
		return "board/boardFAQInsert";
	}
	@RequestMapping(value="/updateFAQ", method = RequestMethod.POST)
	public String updateFAQ(Model model, FaqVO faqVO) {
		int result = boardService.updateFAQ(faqVO);
		return "redirect:/board/boardFAQ";
	}
	@RequestMapping(value="/deleteFAQ", method = RequestMethod.GET)
	public String deleteFAQ(Model model, FaqVO faqVO) {
		model.addAttribute("deleteFAQ", boardService.deleteFAQ(faqVO));
		System.out.println("delete");
		return "board/boardFAQ";
	}
	@RequestMapping(value="/boardFaqSave",method = RequestMethod.POST)
	public String faqBoard(@ModelAttribute("FaqVO")FaqVO faqVO,	RedirectAttributes rttr) {
		boardService.getFAQInsert(faqVO);
		return "redirect:/board/boardFAQ";
	}
	
}
