package kr.co.bit.hanacrm.Schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	
	@RequestMapping(value="/schedule/{date}", method=RequestMethod.GET)
	public String schedule(HttpServletRequest request, @PathVariable String date){
		//request.setAttribute("scheduleList", scheduleService.schedule(date));
		System.out.println("sc");
		return "/schedule/schedule";
	}
}
