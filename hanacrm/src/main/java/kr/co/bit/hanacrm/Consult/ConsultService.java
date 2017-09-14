package kr.co.bit.hanacrm.Consult;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.hanacrm.Customer.CusDAO;

@Service
public class ConsultService {
	
	@Autowired
	private ConsultDAO consultDAO;
	
	@Autowired
	private CusDAO customerDAO;	

	public List<ConsultVO> selectList() {
		List<ConsultVO> consultList = consultDAO.selectList();
		
		for(int i = 0; i < consultList.size(); i++)
		{
			ConsultVO consult = consultList.get(i);
			
			consult.setConsultProduct(consultDAO.selectProductList(consult.getNo()));
			
			//consult.setCustomerVO(consultDAO.selectCustomer(consult.getCustomerNo()));
			consult.setCustomerVO(customerDAO.detail(consult.getCustomerNo()));
		}
		
		return consultList;
	}

	public Integer insert(ConsultVO consultVO) {
		return consultDAO.insert(consultVO);
	}

	public Integer update(ConsultVO consultVO) {
		return consultDAO.update(consultVO);
	}

	public Integer delete(int no) {
		return consultDAO.delete(no);
	}

}
