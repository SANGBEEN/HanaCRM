package kr.co.bit.hanacrm.Customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CusService {
	@Autowired
	private CusDAO cusDao;

	public List<CusVO> list(int no) {
		return cusDao.selectByEmpNo(no);
	}

	public CusVO detail(int no) {
		return cusDao.detail(no);
	}

	public int create(CusVO cus) {
		return cusDao.create(cus);
	}

	public int update(CusVO cus) {
		return cusDao.update(cus);
	}

	public int delete(int no) {
		return cusDao.delete(no);
	}
}
