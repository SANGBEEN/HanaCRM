package kr.co.bit.hanacrm.Customer;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.bit.hanacrm.Consult.ConsultService;
import kr.co.bit.hanacrm.Consult.ConsultVO;

@Controller
@RequestMapping("/customer")
public class CusController {
	@Autowired
	private CusService cusService;
	@Autowired
	private ConsultService conService;
	
	//전체조회
	@RequestMapping(method=RequestMethod.GET)
	public String list(Model model, HttpServletRequest req){
//		int page = (int)req.getAttribute("page");
	    List<CusVO> cusList = new ArrayList<>();
	    cusList = cusService.list();
	    for(CusVO cus : cusList){
	    	System.out.println(cus);
	    }
//		//VO to JSON
//		ObjectMapper mapper = new ObjectMapper();
//		try {
//			String json = mapper.writeValueAsString(cusList);
//			model.addAttribute("cusList", json);
//			System.out.println("==========");
//			System.out.println(json);
//		} catch (JsonProcessingException e) {
//			e.printStackTrace();
//		}
	    model.addAttribute("cusList", cusList);
		return "customer/list";	
	}
	
	//상세조회
	@RequestMapping(value="/{no}", method=RequestMethod.GET)
	public String detail(@PathVariable int no, Model model){
		
		CusVO customer = new CusVO();
		List<ConsultVO> consultList = new ArrayList<>();
		
		customer = cusService.detail(no);
		//consultList = conService.selectList();
		//하나씩 조회해서 consultVO에 set 해서 리턴하는 서비스 
		model.addAttribute("customer", customer);
		//타임라인 일단 상담내역만 
		model.addAttribute("consultList", consultList);
		
		System.out.println(customer);
		System.out.println(consultList);
		
		return "customer/detail";
	}
	
	//고객등록
	@RequestMapping(method=RequestMethod.POST)
	public String create(CusVO cus, Model model){
		System.out.println("고객등록");
		System.out.println(cus.toString());
		//임시사원번호
		cus.setEmployeeNo(21);
		
		//Map<String, Object> res = new HashMap<>();
		
		if(cusService.create(cus)==1){
			//res.put("msg", "등록성공");
			model.addAttribute("msg", "등록성공");
		}else
			model.addAttribute("msg", "등록실패");
		model.addAttribute("url", "/customer");
		return "process/alertProcess";
	}
	//고객수정
	@RequestMapping(method=RequestMethod.PUT)
	public String update(CusVO cus){
		if(cusService.update(cus)==1)
			return "redirect:/customer/"+cus.getNo();
		return "redirect:/customer";
	}
	//고객삭제
	@RequestMapping(value="/{no}",method=RequestMethod.DELETE)
	public String delete(@PathVariable int no){
		if(cusService.delete(no)==1){
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