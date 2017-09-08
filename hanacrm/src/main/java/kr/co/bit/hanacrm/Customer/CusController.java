package kr.co.bit.hanacrm.Customer;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/customer")
public class CusController {
	@Autowired
	private CusService cusService;
	
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

}
