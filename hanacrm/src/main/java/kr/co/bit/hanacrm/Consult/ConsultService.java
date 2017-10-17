package kr.co.bit.hanacrm.Consult;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.hanacrm.Customer.CusDAO;
import kr.co.bit.hanacrm.Product.ProductDAO;

@Service
public class ConsultService {
	
	@Autowired
	private ConsultDAO consultDAO;
	
	@Autowired
	private CusDAO customerDAO;	
	
	@Autowired
	private ProductDAO productDAO;

	public List<ConsultVO> selectListByEmployeeNo(int employeeNo) {
		List<ConsultVO> consultList = consultDAO.selectListByEmployeeNo(employeeNo);
		
		for(int i = 0; i < consultList.size(); i++)
		{
			ConsultVO consult = consultList.get(i);
			
			consult.setConsultProduct(consultDAO.selectProductList(consult.getNo()));
			
			//consult.setCustomerVO(consultDAO.selectCustomer(consult.getCustomerNo()));
			consult.setCustomerVO(customerDAO.detail(consult.getCustomerNo()));
		}
		
		return consultList;
	}
	
	public ConsultVO selectByNo(int no) {
		ConsultVO consultVO = consultDAO.selectByNo(no);
		
		consultVO.setCustomerVO(customerDAO.detail(consultVO.getCustomerNo()));
		
		consultVO.setConsultProduct(consultDAO.selectProductList(consultVO.getNo()));
		
		return consultVO;
	} 

	public int insert(ConsultVO consultVO) {
		int consultNo = consultDAO.selectSequence();
		
		consultVO.setNo(consultNo);
		
		if(consultDAO.insert(consultVO) == 1)
		{
			System.out.println(consultVO.getNo() + "번 상담 성공");
		}
		else
		{
			System.out.println(consultVO.getNo() + "번 상담 실패");
		}
		
		List<ConsultProductVO> consultProductList = consultVO.getConsultProduct();
		
		for (ConsultProductVO consultProductVO : consultProductList) {
			consultProductVO.setConsultNo(consultNo);
			if(consultDAO.insertProduct(consultProductVO) == 1)
			{
				System.out.println(consultProductVO.getNo() + "번 상담 상품 성공");
			}
			else
			{
				System.out.println(consultProductVO.getNo() + "번 상담 상품 실패");
			}
		}	
		
		return consultNo;
	}

	public int update(ConsultVO consultVO) {
		return consultDAO.update(consultVO) == 1 ? consultVO.getNo() : 0;
	}

	public int delete(int consultNo) {		
		return consultDAO.delete(consultNo) == 1 ? consultNo : 0;
	}
	
	public int selectConsultCount(int employeeNo) {		
		return consultDAO.selectConsultCount(employeeNo);
	}
	
	public List<ConsultVO> selectList(int customerNo) {
		List<ConsultVO> consultList = consultDAO.selectByCusNo(customerNo);
		
		for(int i = 0; i < consultList.size(); i++)
		{
			List<ConsultProductVO> cpList = new ArrayList<>();
			cpList = consultDAO.selectProductList(consultList.get(i).getNo());
			for(int j=0;j<cpList.size();j++){
				int type = cpList.get(j).getType();
				int no = cpList.get(j).getProductNo();
				cpList.get(j).setProductName(productDAO.selectNameByNo(type, no));
			}
			consultList.get(i).setConsultProduct(cpList);
		}	
		
		return consultList;
	}
	
}
