package kr.co.bit.hanacrm.Customer;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.hanacrm.Consult.ConsultService;
import kr.co.bit.hanacrm.Consult.ConsultVO;
import kr.co.bit.hanacrm.Employee.EmpVO;
import kr.co.bit.hanacrm.Schedule.ScheduleService;
import kr.co.bit.hanacrm.Schedule.ScheduleVO;

@Controller
@RequestMapping("/customer")
public class CusController {
	@Autowired
	private CusService cusService;
	@Autowired
	private ConsultService conService;
	@Autowired
	private ScheduleService scheduleService;
	
	//전체조회
	@RequestMapping(method=RequestMethod.GET)
	public String list(Model model, HttpSession session){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
	    List<CusVO> cusList = new ArrayList<>();
	    cusList = cusService.list(emp.getNo());
	    for(CusVO cus : cusList){
	    	System.out.println(cus);
	    }
	    model.addAttribute("cusList", cusList);
		return "customer/list";	
	}
	
	//내 고객 리스트
	@ResponseBody
	@RequestMapping(value="/listForSearch", method=RequestMethod.GET, produces="application/json")
	public List<CusVO> selectListForSearch(HttpSession session){
		return cusService.list(((EmpVO) session.getAttribute("emp")).getNo());	
	}
	
	//상세조회
	@RequestMapping(value="/{no}", method=RequestMethod.GET)
	public String detail(@PathVariable int no, Model model){
		
		CusVO customer = new CusVO();
		List<ConsultVO> consultList = new ArrayList<>();
		
		customer = cusService.detail(no);
		consultList = conService.selectList(no);
		
		model.addAttribute("customer", customer);
		//타임라인 일단 상담내역만 
		model.addAttribute("consultList", consultList);
		
		System.out.println(customer);
		System.out.println(consultList);
		
		return "customer/detail";
	}
	
	//고객등록
	@RequestMapping(method=RequestMethod.POST)
	public String create(CusVO cus, Model model, HttpSession session){
		System.out.println("고객등록");
		System.out.println(cus.toString());
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		cus.setEmployeeNo(emp.getNo());
		
		int cusNo = cusService.create(cus);
		if(cusNo > 1){
			int result = 1;
			// 고객 추가 시 생일 이벤트 자동 추가
			if(cus.getBirthDate()!=null || cus.getBirthDate()!="") {
				
				String birthDay = "2017"+cus.getBirthDate().substring(4,10);
			//	System.out.println(birthDay);
				
				/* (Integer no, Integer employeeNo, Integer customerNo, String location, String type, String comments,
				 String startDate, String endDate, String regDate, Integer importance, String repetition) */
				ScheduleVO schedule = new ScheduleVO(0, emp.getNo(), cusNo , "", "Event", "생일", 
													birthDay, birthDay, "", 3, "매년");
				result = scheduleService.insert(schedule);
			}

			if(result>0) {
				model.addAttribute("msg", "등록 성공");
			}else {
				model.addAttribute("msg", "이벤트 추가 등록 실패");
			}
		}else
			model.addAttribute("msg", "고객 등록 실패");
		
		model.addAttribute("url", "/customer");
		return "process/alertProcess";
	}
	
	//고객수정
	@ResponseBody
	@RequestMapping(method=RequestMethod.PUT)
	public String update(@RequestBody CusVO cus){
		
		cusService.update(cus);
//		if(cusService.update(cus)==1)
//			return "redirect:/customer/"+cus.getNo();
//		return "redirect:/customer";
		System.out.println(cus);
		return "success";
	}
	
	//고객삭제
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(String cusNo){
		System.out.println("삭제할꺼야 : " + cusNo);
		
		if(cusService.delete(Integer.parseInt(cusNo))==1){
			System.out.println("삭제성공");
			return "redirect:/customer";
		}
		System.out.println("삭제실패");
		return "redirect:/customer";
	}
}

//1.@restcontroller 쓰고 ModelAndView써서포워딩 -> 가능하나 RestController 목적의 위배됨
//2.api요청을 ajax를 이용하고 모든데이터를 json으로 리턴후 뷰 포워딩
//3.restcontroller이나 @responsebody를 안쓰고 put delete 구현?