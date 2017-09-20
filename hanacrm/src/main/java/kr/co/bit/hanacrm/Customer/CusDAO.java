package kr.co.bit.hanacrm.Customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CusDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public List<CusVO> selectAll() {
		// TODO Auto-generated method stub
		return sql.selectList("cus.CusDAO.selectAll");
	}

	public CusVO detail(int no) {
		// TODO Auto-generated method stub
		return sql.selectOne("cus.CusDAO.selectByNo", no);
	}

	public int create(CusVO cus) {
		// TODO Auto-generated method stub
		return sql.insert("cus.CusDAO.insert", cus);
	}
	public int update(CusVO cus) {
		// TODO Auto-generated method stub
		return sql.update("cus.CusDAO.update", cus);
	}
	public int delete(int no) {
		// TODO Auto-generated method stub
		return sql.delete("cus.CusDAO.deleteByNo", no);
	}

	public List<CusVO> selectByEmpNo(int no) {
		// TODO Auto-generated method stub
		return sql.selectList("cus.CusDAO.selectByEmpNo", no);
	}
	
}
