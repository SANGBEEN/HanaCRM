package kr.co.bit.hanacrm.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpService {
	@Autowired
	private EmpDAO empDAO;
	
	public int join(EmpVO emp){
		return empDAO.join(emp);
	}

	public EmpVO login(EmpVO emp) {
		// TODO Auto-generated method stub
		return empDAO.login(emp);
	}
}
