package kr.co.bit.hanacrm.Schedule;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.hanacrm.Customer.CusService;
import kr.co.bit.hanacrm.Employee.EmpVO;


@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;

	@Autowired
	private CusService cusService;
		
	// 일정 전체 리스트
	@RequestMapping(value="/schedule/list", method=RequestMethod.GET)
	public String selectList(Model model, HttpSession session){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		model.addAttribute("scheduleList", scheduleService.selectListAll(1));
		model.addAttribute("cusList", cusService.list(emp.getNo()));
		return "/schedule/schedule";
	}
	
/*	// n월 일정
	@RequestMapping(value="/schedule/list", method=RequestMethod.GET)
	public String selectList(Model model){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		ScheduleVO schedule = new ScheduleVO();
		schedule.setEmployeeNo(1); //emp.getNo());
		String date = new SimpleDateFormat("yyyyMM").format(new Date());
		schedule.setDate(date);
		model.addAttribute("scheduleList", scheduleService.selectList(schedule));
		return "/schedule/schedule";
	}*/
	
	// n월 일정 리스트
	@ResponseBody
	@RequestMapping(value="/schedule/list/{date}", method=RequestMethod.GET)
	public List<ScheduleVO> selectListByDate(Model model, HttpSession session, @PathVariable String date){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		ScheduleVO schedule = new ScheduleVO();
		schedule.setEmployeeNo(emp.getNo());
		schedule.setDate(date);
	//	model.addAttribute("scheduleList", scheduleService.selectList(schedule));
	//	System.out.println(schedule);
		return scheduleService.selectList(schedule);
	}
		
	// 날짜, 타입별 일정 리스트
	@ResponseBody
	@RequestMapping(value="/schedule/listForConsult", method=RequestMethod.GET)
	public List<ScheduleVO> selectListByType(Model model, HttpSession session, ScheduleVO schedule){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		schedule.setEmployeeNo(emp.getNo());
	//	model.addAttribute("scheduleList", scheduleService.selectListByType(schedule));
			System.out.println(schedule);
			List<ScheduleVO> list = scheduleService.selectListByType(schedule);
			System.out.println(list);
		return list; //scheduleService.selectListByType(schedule);
	}
	
	// 날짜, 타입별 일정 리스트
		@ResponseBody
		@RequestMapping(value="/schedule/listByTypeForConsult", method=RequestMethod.GET, produces="application/json")
		//public List<ScheduleVO> selectListByTypeForConsult(HttpSession session, ScheduleVO schedule){
		public List<ScheduleVO> selectListByTypeForConsult(HttpSession session){
			EmpVO emp = (EmpVO) session.getAttribute("emp");
			return scheduleService.selectListForConsult(emp.getNo());
		}
	
	// 일정 추가
	@ResponseBody
	@RequestMapping(value="/schedule", method=RequestMethod.POST)
	public int insert(HttpSession session, ScheduleVO schedule) {
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		schedule.setEmployeeNo(emp.getNo());
		System.out.println("일정 추가");
		System.out.println(schedule);
		return scheduleService.insert(schedule);
	}
	
	// 일정 수정
	@ResponseBody
	@RequestMapping(value="/schedule", method=RequestMethod.PUT)
	public int update(@RequestBody ScheduleVO schedule){
		System.out.println("일정 수정");
		System.out.println("aaa - "+schedule);
		return scheduleService.update(schedule);
	}
	
	// 일정 삭제
	@ResponseBody
	@RequestMapping(value="/schedule/{no}", method=RequestMethod.DELETE)
	public int delete(@PathVariable int no){
		System.out.println("일정 삭제");
		return scheduleService.delete(no);
	}
	
	// 일정 상세정보
	@ResponseBody
	@RequestMapping(value="/schedule/{no}", method=RequestMethod.GET)
	public ScheduleVO selectByNo(HttpServletRequest request, @PathVariable int no){
		return scheduleService.selectByNo(no);
	}
	
	// 일정 조회
	@ResponseBody
	@RequestMapping(value="/schedule/timeList", method=RequestMethod.GET)
	public List<String> selectTimeList(HttpSession session, ScheduleVO schedule) {
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		schedule.setNo(emp.getNo());
		return scheduleService.selectTimeList(schedule);
	}
	
	// 예약 신청 조회
	@RequestMapping(value="/schedule/reservation", method=RequestMethod.GET)
	public String selectReservation(Model model, HttpSession session){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		model.addAttribute("reservationList", scheduleService.selectReservation(emp.getNo()));
		return "/schedule/reservation";
	}
	
	// 예약 신청 내역
	@ResponseBody
	@RequestMapping(value="/schedule/reservation/listForAlarm", method=RequestMethod.GET)
	public List<ScheduleVO> getReservation(HttpSession session){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		return scheduleService.selectReservationDefault(emp.getNo());
	}
	
	// 예약 처리
	@ResponseBody
	@RequestMapping(value="/schedule/reservation", method=RequestMethod.PUT)
	public int updateReservation(HttpSession session, @RequestBody ScheduleVO reservation) {
		//System.out.println(reservation);
		//return 0;
		return scheduleService.updateReservation(reservation);
	}
	
	
	// 테스트
	@RequestMapping("/test")
	public String test() {
		return "/schedule/datetimepicker";
	}
	
}
