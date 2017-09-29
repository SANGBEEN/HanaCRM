package kr.co.bit.hanacrm.Product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.hanacrm.Main.MainVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<ProductVO> selectDepositList() {
		System.out.println("selectDepositList");
		return sqlSessionTemplate.selectList("deposit.DepositDAO.selectList");
	}

	public List<ProductVO> selectSavingsList() {
		return sqlSessionTemplate.selectList("savings.SavingsDAO.selectList");
	}

	public List<ProductVO> selectCardList() {
		return null;
	}
	
	public DepositVO selectDepositByNo(int no) {
		return sqlSessionTemplate.selectOne("deposit.DepositDAO.selectByNo", no);
	}
	
	public List<OptionVO> selectDepositOption(String finPrdtCd) {
		return sqlSessionTemplate.selectList("option.OptionDAO.selectDepositOption", finPrdtCd);
	}

	public SavingsVO selectSavingsByNo(int no) {
		return sqlSessionTemplate.selectOne("savings.SavingsDAO.selectByNo", no);
	}
	
	public List<OptionVO> selectSavingsOption(String finPrdtCd) {
		return sqlSessionTemplate.selectList("option.OptionDAO.selectSavingsOption", finPrdtCd);
	}

	public ProductVO selectCardByNo(int no) {
		return null;
	}

	public int insertDeposit(DepositVO depositVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("deposit.DepositDAO.insert", depositVO);
	}
	
	public int insertDepositOption(OptionVO option) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("option.OptionDAO.insertDepositOption", option);
	}
	
	public int insertSavings(SavingsVO savingsVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("savings.SavingsDAO.insert",savingsVO);
		
	}
	
	public int insertSavingsOption(OptionVO option) {
		// TODO Auto-generated method stub

		return sqlSessionTemplate.insert("option.OptionDAO.insertSavingsOption", option);
	}
	
	public String selectNameByNo(int type, int no) {
		String name="";
		switch(type){
		case 1: 
			name = sqlSessionTemplate.selectOne("deposit.DepositDAO.selectName", no);
			break;
		case 2:
			name = sqlSessionTemplate.selectOne("savings.SavingsDAO.selectName", no);
			break;
			default:
		}
		return name;
	}

	public List<MainVO> selectTopDeposit() {
		return sqlSessionTemplate.selectList("deposit.DepositDAO.selectTop");
	}
	
	public List<MainVO> selectTopSavings() {
		return sqlSessionTemplate.selectList("savings.SavingsDAO.selectTop");
	}

}
