package kr.co.bit.hanacrm.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductService {

	@Autowired
	private ProductDAO pDao;
	
	public List selectList() {
		return null;
	}

	public Object selectByNo(int no) {
		return null;
	}
	
	
	public int insertDeposit(List<DepositVO> depositList, List<OptionVO> optionList) {
		int result=0;
		
		for(int i=0;i<depositList.size();i++){
			pDao.insertDeposit(depositList.get(i));
			result++;
		}
		
		for(int i=0;i<optionList.size();i++){
			pDao.insertDepositOption(optionList.get(i));
			result++;
		}
		
		return result;
	}

}
