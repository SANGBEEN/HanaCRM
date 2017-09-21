package kr.co.bit.hanacrm.Product;


import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.hanacrm.Util.Util;

@Controller
public class ProductController {
	
	private final String AUTH = Util.jsonParse("auth");
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/sales/product/{type}", method=RequestMethod.GET)
	public ModelAndView selectList(@PathVariable int type){
		return new ModelAndView("/sales/product/list", "productList", productService.selectList(type));
	}
	
	@RequestMapping(value="/sales/product/{type}/{no}", method=RequestMethod.GET)
	public ModelAndView selectByNo(@PathVariable int type, @PathVariable int no){
		return new ModelAndView("/sales/product/detail", "productDetail", productService.selectByNo(type, no));
	}
	
	@ResponseBody
	@RequestMapping(value="/product/deposit", method=RequestMethod.GET)
	public Map<String, Object> depositInfo(HttpServletRequest req, HttpServletResponse res) throws IOException, ParseException{
		System.out.println("예금저장");
		//PrintWriter out = res.getWriter();
		
		res.setContentType("text/html; charset=utf-8");
		
		String addr="http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?auth=";
		String topFinGrpNo = "&" + "topFinGrpNo=020000";
		String pageNo = "&" + "pageNo=1";
		
		addr = addr + AUTH + topFinGrpNo + pageNo;
		System.out.println("url : "+addr);
		URL url = new URL(addr);
		InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(),"utf-8");
		JSONObject object = (JSONObject)JSONValue.parseWithException(isr);
		JSONObject result = (JSONObject)(object.get("result"));
		JSONArray items = (JSONArray)result.get("baseList");
		JSONArray options = (JSONArray)result.get("optionList");
		
		List<DepositVO> depositList = new ArrayList<>();
		List<OptionVO> optionList = new ArrayList<>();
		
		for(int i = 0 ; i < items.size(); i++) {
			JSONObject obj1 = (JSONObject)items.get(i);        
			DepositVO deposit = new DepositVO();
			deposit.setDclsMonth(obj1.get("dcls_month").toString());
			deposit.setFinCoNo(obj1.get("fin_co_no").toString());
			deposit.setKorCoNm(obj1.get("kor_co_nm").toString());
			deposit.setFinPrdtCd(obj1.get("fin_prdt_cd").toString());
			deposit.setFinPrdtNm(obj1.get("fin_prdt_nm").toString());
			deposit.setJoinWay(obj1.get("join_way").toString());
			deposit.setMtrtInt(obj1.get("mtrt_int").toString());
			deposit.setSpclCnd(obj1.get("spcl_cnd").toString());
			deposit.setJoinDeny(Integer.parseInt(obj1.get("join_deny").toString()));
			deposit.setJoinMember(obj1.get("join_member").toString());
			deposit.setEtcNote(obj1.get("etc_note").toString());
			//String temp = obj1.get("max_limit").toString();
//			String temp = "0";
//			if(temp!=null){
//				deposit.setMaxLimit(Integer.parseInt(temp));
//			}
			String tempLimit = obj1.get("max_limit")==null ? "-1" : obj1.get("max_limit").toString();
			deposit.setMaxLimit(Integer.parseInt(tempLimit));
			deposit.setDclsStrtDay(obj1.get("dcls_strt_day").toString());
			//deposit.setDclsEndDay(obj1.get("dcls_end_day").toString());
			deposit.setDclsEndDay("21000101");
			deposit.setFinCoSubmDay(obj1.get("fin_co_subm_day").toString());
			System.out.println(deposit);
			depositList.add(deposit);
		}
		
		for(int i=0;i<options.size();i++){
			JSONObject obj2 = (JSONObject)options.get(i);
			OptionVO option = new OptionVO();
			option.setDclsMonth(obj2.get("dcls_month").toString());
			option.setFinCoNo(obj2.get("fin_co_no").toString());
			option.setFinPrdtCd(obj2.get("fin_prdt_cd").toString());
			option.setIntrRateType(obj2.get("intr_rate_type").toString());
			option.setIntrRateTypeNm(obj2.get("intr_rate_type_nm").toString());
			option.setSaveTrm(Integer.parseInt(obj2.get("save_trm").toString()));
	//		option.setSaveTrm(Integer.parseInt(obj2.get("save_trm").toString()));
			String tempRate = obj2.get("intr_rate") == null ? "-1" : obj2.get("intr_rate").toString();
			String tempRate2 = obj2.get("intr_rate2") == null ? "-1" : obj2.get("intr_rate2").toString();
			option.setIntrRate(Double.parseDouble(tempRate));
			option.setIntrRate2(Double.parseDouble(tempRate2));
			System.out.println(option);
			optionList.add(option);
		}
		
		int count = productService.insertDeposit(depositList,optionList);
        System.out.println("insert 개수 : "+count);
        JSONObject json = new JSONObject();
        json.put("data", result);
		
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value="/product/savings", method=RequestMethod.GET)
	public Map<String, Object> savingsInfo(HttpServletRequest req, HttpServletResponse res) throws IOException, ParseException{
		System.out.println("적금저장");
		//PrintWriter out = res.getWriter();
		
		res.setContentType("text/html; charset=utf-8");
		
		String addr="http://finlife.fss.or.kr/finlifeapi/savingProductsSearch.json?auth=";
		String topFinGrpNo = "&" + "topFinGrpNo=020000";
		String pageNo = "&" + "pageNo=1";
		//max_page_no확인해야함
		addr = addr + AUTH + topFinGrpNo + pageNo;
		System.out.println("url : "+addr);
		URL url = new URL(addr);
		InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(),"utf-8");
		JSONObject object = (JSONObject)JSONValue.parseWithException(isr);
		JSONObject result = (JSONObject)(object.get("result"));
		JSONArray items = (JSONArray)result.get("baseList");
		JSONArray options = (JSONArray)result.get("optionList");
		
		List<SavingsVO> savingsList = new ArrayList<>();
		List<OptionVO> optionList = new ArrayList<>();
		
		for(int i = 0 ; i < items.size(); i++) {
			JSONObject obj1 = (JSONObject)items.get(i);    
			SavingsVO savings = new SavingsVO();
			savings.setDclsMonth(obj1.get("dcls_month").toString());
			savings.setFinCoNo(obj1.get("fin_co_no").toString());
			savings.setKorCoNm(obj1.get("kor_co_nm").toString());
			savings.setFinPrdtCd(obj1.get("fin_prdt_cd").toString());
			savings.setFinPrdtNm(obj1.get("fin_prdt_nm").toString());
			savings.setJoinWay(obj1.get("join_way").toString());
			savings.setMtrtInt(obj1.get("mtrt_int").toString());
			savings.setSpclCnd(obj1.get("spcl_cnd").toString());
			savings.setJoinDeny(Integer.parseInt(obj1.get("join_deny").toString()));
			savings.setJoinMember(obj1.get("join_member").toString());
			savings.setEtcNote(obj1.get("etc_note").toString());
			//
			String tempLimit = obj1.get("max_limit")==null ? "-1" : obj1.get("max_limit").toString();
			savings.setMaxLimit(Integer.parseInt(tempLimit));
			savings.setDclsStrtDay(obj1.get("dcls_strt_day").toString());
			//savings.setDclsEndDay(obj1.get("dcls_end_day").toString());
			savings.setDclsEndDay("21000101");
			savings.setFinCoSubmDay(obj1.get("fin_co_subm_day").toString());
			System.out.println(savings);
			savingsList.add(savings);
		}
		
		for(int i=0;i<options.size();i++){
			JSONObject obj2 = (JSONObject)options.get(i);
			OptionVO option = new OptionVO();
			option.setDclsMonth(obj2.get("dcls_month").toString());
			option.setFinCoNo(obj2.get("fin_co_no").toString());
			option.setFinPrdtCd(obj2.get("fin_prdt_cd").toString());
			option.setIntrRateType(obj2.get("intr_rate_type").toString());
			option.setIntrRateTypeNm(obj2.get("intr_rate_type_nm").toString());
			option.setSaveTrm(Integer.parseInt(obj2.get("save_trm").toString()));
	//		option.setSaveTrm(Integer.parseInt(obj2.get("save_trm").toString()));
			String tempRate = obj2.get("intr_rate") == null ? "-1" : obj2.get("intr_rate").toString();
			String tempRate2 = obj2.get("intr_rate2") == null ? "-1" : obj2.get("intr_rate2").toString();
			option.setIntrRate(Double.parseDouble(tempRate));
			option.setIntrRate2(Double.parseDouble(tempRate2));
			option.setRsrvType(obj2.get("rsrv_type").toString());
			option.setRsrvTypeNm(obj2.get("rsrv_type_nm").toString());
			System.out.println(option);
			optionList.add(option);
		}
		
		int count = productService.insertSavings(savingsList,optionList);
        System.out.println("insert 개수 : "+count);
        JSONObject json = new JSONObject();
        json.put("data", result);
		
		return json;
	}
}
