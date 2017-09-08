package kr.co.bit.hanacrm.Consult;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConsultService {
	
	@Autowired
	private ConsultDAO consultDAO;

	public List<ConsultVO> selectList() {
		List<ConsultVO> consultList = consultDAO.consultList();
		
		for(int i = 0; i < consultList.size(); i++)
		{
			ConsultVO consult = consultList.get(i);
			
			consult.setConsultProduct(consultDAO.consultProductList(consult.getNo()));
			
			consult.setCustomerVO(consultDAO.consultCustomer(consult.getCustomerNo()));
		}
		
		return consultList;
	}

	public String insert(ConsultVO consultVO) {
		// TODO Auto-generated method stub
		return null;
	}

	public String update(ConsultVO consultVO) {
		// TODO Auto-generated method stub
		return null;
	}

	public String delete(int no) {
		// TODO Auto-generated method stub
		return null;
	}

}
