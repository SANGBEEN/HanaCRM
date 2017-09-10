package kr.co.bit.hanacrm.Consult;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ConsultController {
	
	@Autowired
	private ConsultService consultService;
	
	@RequestMapping(value="/sales/consult", method=RequestMethod.GET)
	public String selectList(HttpServletRequest request){
		request.setAttribute("consultList", consultService.selectList());
		//System.out.println(consultService.selectList().get(0).getNo());
		return "/sales/consult";
	}
	
	/*@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.GET)
	public String selectByNo(HttpServletRequest request, @PathVariable int no){
		request.setAttribute("consultCustomer", consultService.selectByNo(no));
		return null;
	}*/
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.POST)
	public String insert(ConsultVO consultVO){
		return consultService.insert(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.PUT)
	public String update(ConsultVO consultVO){
		return consultService.update(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.DELETE)
	public String delete(@PathVariable int no){
		return consultService.delete(no);
	}
	
	
}
