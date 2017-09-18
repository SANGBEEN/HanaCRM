package kr.co.bit.hanacrm.Memo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemoDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<MemoVO> selectList(Integer employeeNo) {
		return sqlSessionTemplate.selectList("memo.MemoDAO.selectList", employeeNo);
	}

	public Integer insert(MemoVO memoVO) {
		return sqlSessionTemplate.insert("memo.MemoDAO.insert", memoVO);
	}

	public Integer update(MemoVO memoVO) {
		return sqlSessionTemplate.update("memo.MemoDAO.update", memoVO);
	}

	public Integer delete(int no) {
		return sqlSessionTemplate.delete("memo.MemoDAO.delete", no);
	}

	public Integer selectByNo(int no) {
		return sqlSessionTemplate.selectOne("memo.MemoDAO.selectByNo", no);
	}

}
