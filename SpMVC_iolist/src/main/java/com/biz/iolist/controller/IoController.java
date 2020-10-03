package com.biz.iolist.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.iolist.model.IoVO;
import com.biz.iolist.service.IoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/") //url 경로최초지정, 최초하면
public class IoController {

	@Autowired
	private IoService ioservice; // Impl
	
	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET) // 리스트 보여주는화면
	public String list(Model model) {

		List<IoVO> iolist =ioservice.selectAll(); //컴퓨터에 접근하는 service클래스 이용해 selectall
		// 또!! 리스트에 담아줌
		
		model.addAttribute("IOLIST",iolist); //iolist 는 내가 보내려는 값, 앞에 문자열을 붙여서 같이 보낸다 view단에서 이름표 같이 입력
		model.addAttribute("BODY","IO-HOME"); //위에 보낼 리스트를 위치시킬 place를 지정
		return "home";
	}

	
	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String input(@ModelAttribute("ioVO") IoVO ioVO,Model model) {
	
		model.addAttribute("BODY","IO-INPUT");
		
		return "home";

	}

	
	@RequestMapping(value = "/input", method = RequestMethod.POST)
	public String input(@ModelAttribute("ioVO") IoVO ioVO) {

		LocalDateTime local = LocalDateTime.now();
		String date = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(local);
		String time = DateTimeFormatter.ofPattern("HH:mm:ss").format(local);
		
		ioVO.setIo_date(date);
		ioVO.setIo_time(time);
		ioservice.insert(ioVO);
		
		return "redirect:/";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET) 
	public String detail(@RequestParam("seq") String seq, Model model) { //디테일이 있는 곳
		// 1. pathvariable - seq를 참조해서 주소를 유동적으로 바꾸겠다
		// 2. requestparam 을 참조해서 써도 됨
		
		log.debug( seq); //seq만 참조하겠다
		
		IoVO detailList = ioservice.findBySeq(Long.parseLong(seq)); //seq를 비교해서 일치하면 리스트를 또 다른 리스트에 담아..
		// seq 기준으로 findbyseq를 하면 주소값을 대조하는
		// parselong 
		// seq는 주소값! 리스트안에 value값
		// Long.parseLong seq는 애초에 long으로 정했으므로 Long.parseLong // seq를 대조해서 주소값이 맞으면 덩어리상태인 value값을 파싱(하나하나 쪼갬)
		// iolist 안에 다시 리스트로 만들어라
		
		model.addAttribute("ioVO",detailList); //iolist 는 내가 보내려는 값, 앞에 문자열을 붙여서 같이 보낸다 view단에서 이름표 같이 입력
		model.addAttribute("BODY","IO-DETAIL");
		return "home";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam("seq") String seq, Model model) { //seq 를 대조해서 정보 가져온 다음 
		// 맞으면 파싱해서 새로 리스트에 담고 업데이트 수행
			
		log.debug(seq);
		IoVO updateList = ioservice.findBySeq(Long.parseLong(seq));
		
		model.addAttribute("ioVO",updateList);
		model.addAttribute("BODY","IO-INPUT");
		return "home";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute IoVO ioVO, Model model) {

		int ret = ioservice.update(ioVO);
		
		model.addAttribute("seq",ioVO.getSeq()); //seq 일단 뽑아서 seq라는 명찰을 붙여서 update하라고 보내줌
		
		return "redirect:/"; //조작하면 (post)
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("seq") String seq) { //seq라는 변수를 요청해서 String형으로 가져와서 비교해서 지움
		
		ioservice.delete(Long.parseLong(seq)); // 리스트를 만들어서 삭제할 필요 xxx 
		
		return "redirect:/"; //정보를 지우니까 redirect
		// home 아무것도 하지않고 표시할때만
		// 데이터를 조작한 다음 

	}

}