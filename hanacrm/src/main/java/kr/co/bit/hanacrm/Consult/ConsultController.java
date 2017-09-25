package kr.co.bit.hanacrm.Consult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConsultController {
	
	@Autowired
	private ConsultService consultService;
	
	@RequestMapping(value="/sales/consult", method=RequestMethod.GET)
	public ModelAndView selectList(){
		return new ModelAndView("/sales/consult", "consultList", consultService.selectList());
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.GET, produces="application/json")
	public ConsultVO selectByNo(@PathVariable int no){		
		return consultService.selectByNo(no);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.POST)
	public Integer insert(ConsultVO consultVO){
		return consultService.insert(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.PUT)
	public Integer update(ConsultVO consultVO){
		return consultService.update(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.DELETE)
	public Integer delete(@PathVariable int no){
		return consultService.delete(no);
	}	
	
}
