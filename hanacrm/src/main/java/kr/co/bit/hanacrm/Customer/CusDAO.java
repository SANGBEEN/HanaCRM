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
	
}
