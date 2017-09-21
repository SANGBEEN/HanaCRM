package kr.co.bit.hanacrm.Contract;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContractDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	//월별영업실적조회
	public List<Map<String, Object>> selectCount(int no){
		return sql.selectList("contract.ContractDAO.selectCount", no);
	}
}
