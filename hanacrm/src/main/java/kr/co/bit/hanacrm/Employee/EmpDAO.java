package kr.co.bit.hanacrm.Employee;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmpDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	public int join(EmpVO emp){
		return sql.insert("emp.EmpDAO.empJoin", emp);
	}

	public EmpVO login(EmpVO emp) {
		// TODO Auto-generated method stub
		return sql.selectOne("emp.EmpDAO.empLogin",emp);
	}

	public EmpVO selectByNo(EmpVO emp) {
		// TODO Auto-generated method stub
		return sql.selectOne("emp.EmpDAO.selectByNo", emp.getNo());
	}

	public int update(EmpVO emp) {
		// TODO Auto-generated method stub
		return sql.insert("emp.EmpDAO.update", emp);
	}
}
