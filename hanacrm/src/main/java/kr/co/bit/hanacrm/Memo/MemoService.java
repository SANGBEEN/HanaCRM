package kr.co.bit.hanacrm.Memo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemoService {
	
	@Autowired
	MemoDAO memoDAO;

	public List<MemoVO> selectList(Integer employeeNo) {
		return memoDAO.selectList(employeeNo);
	}

	public Integer insert(MemoVO memoVO) {
		return memoDAO.insert(memoVO);
	}

	public Integer update(MemoVO memoVO) {
		return memoDAO.update(memoVO);
	}

	public Integer delete(int no) {
		return memoDAO.delete(no);
	}

	public Integer selectByNo(int no) {
		return memoDAO.selectByNo(no);
	}	

}
