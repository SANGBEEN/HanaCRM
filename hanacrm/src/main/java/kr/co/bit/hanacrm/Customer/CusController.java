package kr.co.bit.hanacrm.Customer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	public String list(Model model){
		
	    List<CusVO> cusList = new ArrayList<>();
	    cusList = cusService.list();
	    for(CusVO cus : cusList){
	    	System.out.println(cus);
	    }
		//VO to JSON
		ObjectMapper mapper = new ObjectMapper();
		try {
			String json = mapper.writeValueAsString(cusList);
			model.addAttribute("cusList", json);
			System.out.println("==========");
			System.out.println(json);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "customer/list";	
	}
	
	//상세조회
	@RequestMapping(value="/{no}", method=RequestMethod.GET)
	public String detail(@PathVariable int no, Model model){
		
		CusVO customer = new CusVO();
		List<ConsultVO> consultList = new ArrayList<>();
		customer = cusService.detail(no);
		consultList = conService.selectList();
		model.addAttribute("customer", customer);
		//타임라인 일단 상담내역만 
		model.addAttribute("consultList", consultList);
		
		System.out.println(customer);
		System.out.println(consultList);
		
		return "";
	}
	
	//고객등록 
	@RequestMapping(method=RequestMethod.POST)
	public String create(CusVO cus){
		if(cusService.create(cus)==1)
			return "";
		return "";
	}
	//고객수정  
	@RequestMapping(method=RequestMethod.PUT)
	public String update(CusVO cus){
		if(cusService.update(cus)==1)
			return "";
		return "";
	}
	//고객삭제 
	@RequestMapping(method=RequestMethod.DELETE)
	public String delete(@RequestParam("no") int no){
		if(cusService.delete(no)==1){
			return "";
		}
		return "";
	}
}
