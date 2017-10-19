package kr.co.bit.hanacrm.Customer;

import java.util.List;
import java.util.Map;

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
		int cusNo = cusDao.selectSeq();
		
		if(cusNo>0) {
			cus.setNo(cusNo);
			cusDao.create(cus);
		}else {
			cusNo = 0;
		}
		
		return cusNo;
	}

	public int update(CusVO cus) {
		return cusDao.update(cus);
	}

	public int delete(int no) {
		return cusDao.delete(no);
	}
	
	// 전체 고객 수
	public int selectCount(int no){
		return cusDao.selectCount(no);
	}
	
	// 타입 별 고객 수
	public List<Map<String, Integer>> selectCountByType(int no){
		return cusDao.selectCountByType(no);
	}
}
