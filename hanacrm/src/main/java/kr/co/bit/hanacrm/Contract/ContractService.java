package kr.co.bit.hanacrm.Contract;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContractService {
	@Autowired
	private ContractDAO contractDAO;
	
	public List<Map<String, Object>> selectCount(int no){
		return contractDAO.selectCount(no);
	}
}
