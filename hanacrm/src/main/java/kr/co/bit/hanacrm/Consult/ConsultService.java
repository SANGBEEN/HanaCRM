package kr.co.bit.hanacrm.Consult;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConsultService {
	
	@Autowired
	private ConsultDAO consultDAO;

	public List<ConsultVO> selectList() {
		List<ConsultVO> consultList = consultDAO.selectList();
		
		for(int i = 0; i < consultList.size(); i++)
		{
			ConsultVO consult = consultList.get(i);
			
			consult.setConsultProduct(consultDAO.selectProductList(consult.getNo()));
			
			consult.setCustomerVO(consultDAO.selectCustomer(consult.getCustomerNo()));
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
	
	public List<ConsultVO> selectList(int customerNo) {
		List<ConsultVO> consultList = consultDAO.selectByCusNo(customerNo);
		
		for(int i = 0; i < consultList.size(); i++)
		{
			List<ConsultProductVO> cpList = new ArrayList<>();
			cpList = consultDAO.selectProductList(consultList.get(i).getNo());
			consultList.get(i).setConsultProduct(cpList);
		}	
		
		return consultList;
	} 
}
