package kr.co.bit.hanacrm.Consult;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.hanacrm.Employee.EmpVO;

@Controller
public class ConsultController {
	
	@Autowired
	private ConsultService consultService;
	
	@RequestMapping(value="/sales/consult", method=RequestMethod.GET)
	public ModelAndView selectList(HttpSession session){
		return new ModelAndView("/sales/consult", "consultList", consultService.selectListByEmployeeNo(((EmpVO) session.getAttribute("emp")).getNo()));
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.GET, produces="application/json")
	public ConsultVO selectByNo(@PathVariable int no){		
		return consultService.selectByNo(no);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.POST)
	public int insert(HttpSession session, @RequestBody ConsultVO consultVO){
		consultVO.setEmployeeNo(((EmpVO) session.getAttribute("emp")).getNo());
		return consultService.insert(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.PUT)
	public int update(ConsultVO consultVO){
		return consultService.update(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.DELETE)
	public int delete(@PathVariable int no){
		return consultService.delete(no);
	}	
	
}
