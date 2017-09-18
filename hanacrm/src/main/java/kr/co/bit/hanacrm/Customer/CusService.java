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

	public CusVO detail(int no) {
		// TODO Auto-generated method stub
		return cusDao.detail(no);
	}

	public int create(CusVO cus) {
		// TODO Auto-generated method stub
		return cusDao.create(cus);
	}
	public int update(CusVO cus) {
		// TODO Auto-generated method stub
		return cusDao.update(cus);
	}
	public int delete(int no) {
		// TODO Auto-generated method stub
		return cusDao.delete(no);
	}
}
