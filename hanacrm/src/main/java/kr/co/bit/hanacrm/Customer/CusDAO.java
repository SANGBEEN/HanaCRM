package kr.co.bit.hanacrm.Customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class CusDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public void selectAll() {
		// TODO Auto-generated method stub
		
	}
	
}
