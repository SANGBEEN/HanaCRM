package kr.co.bit.hanacrm.Product;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/sales/product", method=RequestMethod.GET)
	public ModelAndView selectList(){
		return new ModelAndView("/sales/product/list", "productList", productService.selectList());
	}
	
	@RequestMapping(value="/sales/product/{no}", method=RequestMethod.GET)
	public ModelAndView selectByNo(@PathVariable int no){
		return new ModelAndView("/sales/product/detail", "productDetail", productService.selectByNo(no));
	}
}
