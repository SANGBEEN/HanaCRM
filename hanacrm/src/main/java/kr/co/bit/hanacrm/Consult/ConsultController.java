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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.bit.hanacrm.Customer.CusService;
import kr.co.bit.hanacrm.Customer.CusVO;
import kr.co.bit.hanacrm.Employee.EmpVO;

@Controller
public class ConsultController {
	
	@Autowired
	private ConsultService consultService;
	
	@Autowired
	private CusService customerService;
	
	@RequestMapping(value="/sales/consult", method=RequestMethod.GET)
	public ModelAndView selectList(HttpSession session){
		return new ModelAndView("/sales/consult", "consultList", consultService.selectListByEmployeeNo(((EmpVO) session.getAttribute("emp")).getNo()));
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.GET, produces="application/json")
	public ConsultVO selectByNo(@PathVariable int no){		
		return consultService.selectByNo(no);
	}
	
	//고객정보 상세조회
	@ResponseBody
	@RequestMapping(value="/customer/consult/{no}", method=RequestMethod.GET, produces="application/json")
	public CusVO selectCustomer(@PathVariable int no){		
		return customerService.detail(no);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.POST)
	public int insert(HttpSession session, @RequestBody ConsultVO consultVO){
		System.out.println(consultVO);
		consultVO.setEmployeeNo(((EmpVO) session.getAttribute("emp")).getNo());
		return consultService.insert(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult", method=RequestMethod.PUT)
	public int update(@RequestBody ConsultVO consultVO){
		return consultService.update(consultVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/consult/{no}", method=RequestMethod.DELETE)
	public int delete(@PathVariable int no){
		return consultService.delete(no);
	}	
	
}
