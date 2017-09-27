package kr.co.bit.hanacrm.Main;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.bit.hanacrm.Contract.ContractService;
import kr.co.bit.hanacrm.Employee.EmpService;
import kr.co.bit.hanacrm.Employee.EmpVO;
import kr.co.bit.hanacrm.Product.ProductService;
import kr.co.bit.hanacrm.Schedule.ScheduleService;
import kr.co.bit.hanacrm.Schedule.ScheduleVO;

@Controller
public class MainController {
	
	@Autowired
	private EmpService empService;
	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private ContractService contractService;
	@Autowired
	private ProductService productService;
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("uid") String id, @RequestParam("password") String password, HttpSession session) {
		EmpVO emp = new EmpVO();
		System.out.println("login : " + id);
		emp.setId(id);
		emp.setPassword(password);
		EmpVO loginEmp = new EmpVO();
		loginEmp = empService.login(emp);
		System.out.println(loginEmp);
		if(loginEmp!=null){
			session.setAttribute("emp", loginEmp);
			return "redirect:/main";
		}
		return "redirect:/";
	}
	//메인화면(대시보드)
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(HttpSession session, Model model){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		List<ScheduleVO> scheduleList = new ArrayList<>();
		ScheduleVO schedule = new ScheduleVO();
		
		//현재시각
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
		Date currentTime = new Date();
		String dTime = formatter.format(currentTime);
		System.out.println(dTime);
		
		//오늘할일
		schedule.setDate(dTime);
		schedule.setEmployeeNo(emp.getNo());
		scheduleList = scheduleService.selectListByType(schedule);
		
		//영업실적 
		List<Map<String,Object>> contractList = new ArrayList<>();
		contractList = contractService.selectCount(emp.getNo());
		String json = "";
		//VO to JSON
		ObjectMapper mapper = new ObjectMapper();
		try {
			json = mapper.writeValueAsString(contractList);
			System.out.println(json);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		//상담 많은 예금 상품
		List<MainVO> savingsList = new ArrayList<>();
		savingsList = productService.selectTopSavings();
		String jsonSavingsList = "";
		//VO to JSON
		mapper = new ObjectMapper();
		try {
			jsonSavingsList = mapper.writeValueAsString(savingsList);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		//상담 많은 적금 상품
		List<MainVO> depositList = new ArrayList<>();
		depositList = productService.selectTopDeposit();
		String jsonDepositList = "";
		//VO to JSON
		mapper = new ObjectMapper();
		try {
			jsonDepositList = mapper.writeValueAsString(depositList);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("savingsList", jsonSavingsList);
		model.addAttribute("depositList", jsonDepositList);
		model.addAttribute("scheduleList",scheduleList);
		model.addAttribute("contractList", json);
		return "/main/main";
	}
	//로그아웃 
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
