package kr.co.bit.hanacrm.Schedule;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.hanacrm.Employee.EmpVO;


@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private HttpSession session;
	
	
	// 일정 관리 메인
	@RequestMapping(value="/schedule/list", method=RequestMethod.GET)
	public String selectList(HttpServletRequest request){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		ScheduleVO schedule = new ScheduleVO();
		schedule.setEmployeeNo(1); //emp.getNo());
		String date = new SimpleDateFormat("yyyyMM").format(new Date());
		schedule.setDate(date);
		request.setAttribute("scheduleList", scheduleService.selectList(schedule));
		System.out.println((List<ScheduleVO>)request.getAttribute("scheduleList"));
		return "/schedule/schedule";
	}
	
	// n월 일정 리스트
	@ResponseBody
	@RequestMapping(value="/schedule/list/{date}", method=RequestMethod.GET)
	public List<ScheduleVO> selectListByDate(HttpServletRequest request, @PathVariable String date){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		ScheduleVO schedule = new ScheduleVO();
		schedule.setEmployeeNo(1); //emp.getNo());
		schedule.setDate(date);
	//	request.setAttribute("scheduleList", scheduleService.selectList(schedule));
		System.out.println(schedule);
		return scheduleService.selectList(schedule);
	}
	
	// 일정 추가
	@ResponseBody
	@RequestMapping(value="/schedule", method=RequestMethod.POST)
	public int insert(HttpServletRequest request, ScheduleVO schedule) {
		return scheduleService.insert(schedule);
	}
	
	// 일정 수정
	@ResponseBody
	@RequestMapping(value="/schedule", method=RequestMethod.PUT)
	public int update(HttpServletRequest request, @PathVariable ScheduleVO schedule){
		return scheduleService.update(schedule);
	}
	
	// 일정 삭제
	@ResponseBody
	@RequestMapping(value="/schedule/{no}", method=RequestMethod.DELETE)
	public int delete(HttpServletRequest request, @PathVariable int no){
		return scheduleService.delete(no);
	}
	
	// 일정 상세정보
	@ResponseBody
	@RequestMapping(value="/schedule/{no}", method=RequestMethod.GET)
	public ScheduleVO selectByNo(HttpServletRequest request, @PathVariable int no){
		return scheduleService.selectByNo(no);
	}
}
