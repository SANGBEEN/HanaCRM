package kr.co.bit.hanacrm.Contract;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/contract")
public class ContractController {
	@Autowired
	private ContractService contractService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String list(Model model, HttpSession session){
		return "";
	}
}
