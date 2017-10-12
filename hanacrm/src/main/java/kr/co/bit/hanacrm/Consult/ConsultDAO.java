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

	public List<ConsultVO> selectListByEmployeeNo(int employeeNo) {
		return sqlSessionTemplate.selectList("consult.ConsultDAO.selectListByEmployeeNo", employeeNo);
	}

	public List<ConsultProductVO> selectProductList(int consultNo) {
		return sqlSessionTemplate.selectList("consult.ConsultDAO.selectProductList", consultNo);
	}

	/*public CusVO selectCustomer(Integer customerNo) {
		return sqlSessionTemplate.selectOne("consult.ConsultDAO.selectCustomer", customerNo);
	}*/
	
	public ConsultVO selectByNo(int consultNo) {
		return sqlSessionTemplate.selectOne("consult.ConsultDAO.selectByNo", consultNo);
	}
	
	public int selectSequence() {
		return sqlSessionTemplate.selectOne("consult.ConsultDAO.selectSeq");
	}

	public int insert(ConsultVO consultVO) {
		return sqlSessionTemplate.insert("consult.ConsultDAO.insert", consultVO);
	}
	
	public int insertProduct(ConsultProductVO consultProductVO) {
		return sqlSessionTemplate.insert("consult.ConsultDAO.insertProduct", consultProductVO);
	}

	public int update(ConsultVO consultVO) {
		return sqlSessionTemplate.update("consult.ConsultDAO.update", consultVO);
	}

	public int delete(int no) {
		return sqlSessionTemplate.delete("consult.ConsultDAO.delete", no);
	}

	public List<ConsultVO> selectByCusNo(int customerNo) {
		return sqlSessionTemplate.selectList("consult.ConsultDAO.select", customerNo);
	}

}
