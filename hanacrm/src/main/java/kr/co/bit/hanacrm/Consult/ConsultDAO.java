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

	public List<ConsultVO> selectList() {
		return sqlSessionTemplate.selectList("consult.ConsultDAO.selectList");
	}

	public List<ConsultProductVO> selectProductList(Integer consultNo) {
		return sqlSessionTemplate.selectList("consult.ConsultDAO.selectProductList", consultNo);
	}

	public CusVO selectCustomer(Integer customerNo) {
		return sqlSessionTemplate.selectOne("consult.ConsultDAO.selectCustomer", customerNo);
	}

	public Integer insert(ConsultVO consultVO) {
		return sqlSessionTemplate.insert("consult.ConsultDAO.insert", consultVO);
	}

	public Integer update(ConsultVO consultVO) {
		return sqlSessionTemplate.update("consult.ConsultDAO.update", consultVO);
	}

	public Integer delete(int no) {
		return sqlSessionTemplate.delete("consult.ConsultDAO.delete", no);
	}

}
