package kr.co.bit.hanacrm.Memo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.hanacrm.Employee.EmpVO;

@Controller
public class MemoController {

	@Autowired
	private MemoService memoService;
	
	@RequestMapping(value="/sales/memo", method=RequestMethod.GET)
	public String selectList(HttpServletRequest request)
	{
		//request.setAttribute("memoList", memoService.selectList(((EmpVO)request.getSession().getAttribute("emp")).getNo()));
		request.setAttribute("memoList", memoService.selectList(1));
		return "/sales/memo";
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo", method=RequestMethod.POST)
	public Integer insert(HttpSession session, MemoVO memoVO)
	{	
		memoVO.setEmployeeNo(((EmpVO)session.getAttribute("emp")).getNo());
		System.out.println("메모 추가");
		System.out.println(memoVO);
		return memoService.insert(memoVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo", method=RequestMethod.PUT)
	public Integer update(HttpSession session, @RequestBody MemoVO memoVO)
	{
		//memoVO.setEmployeeNo(((EmpVO)session.getAttribute("emp")).getNo());
		return memoService.update(memoVO);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo/{no}", method=RequestMethod.DELETE)
	public Integer delete(@PathVariable int no)
	{
		return memoService.delete(no);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo/{no}", method=RequestMethod.GET)
	public Integer selectByNo(@PathVariable int no)
	{
		return memoService.selectByNo(no);
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memoSeq", method=RequestMethod.GET)
	public Integer selectSeq()
	{		
		return memoService.selectSeq();
	}
}
