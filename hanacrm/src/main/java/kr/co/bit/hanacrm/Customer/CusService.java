package kr.co.bit.hanacrm.Customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CusService {
	@Autowired
	private CusDAO cusDao;

	public List<CusVO> list() {
		// TODO Auto-generated method stub
		return cusDao.selectAll();
	}
	
	
}
