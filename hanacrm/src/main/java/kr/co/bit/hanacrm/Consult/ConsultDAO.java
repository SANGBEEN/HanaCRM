package kr.co.bit.hanacrm.Consult;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.hanacrm.Customer.CusVO;

@Repository
public class ConsultDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<ConsultVO> consultList() {
		return sqlSessionTemplate.selectList("consult.consultDAO.consultList");
	}

	public List<ConsultProductVO> consultProductList(Integer consultNo) {
		return sqlSessionTemplate.selectList("consult.consultDAO.consultProductList", consultNo);
	}

	public CusVO consultCustomer(Integer customerNo) {
		return sqlSessionTemplate.selectOne("consult.consultDAO.consultCustomer", customerNo);
	}

}
