package kr.co.bit.hanacrm.Memo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemoController {

	@Autowired
	private MemoService memoService;
	
	@RequestMapping(value="/sales/memo", method=RequestMethod.GET)
	public String selectList()
	{
		return "/sales/memo";
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo", method=RequestMethod.POST)
	public String insert()
	{
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo", method=RequestMethod.PUT)
	public String update()
	{
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo/{no}", method=RequestMethod.DELETE)
	public String delete(@PathVariable int no)
	{
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/sales/memo/{no}", method=RequestMethod.GET)
	public String selectOne(@PathVariable int no)
	{
		return null;
	}
}
