package kr.co.bit.hanacrm.Product;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public int insertDeposit(DepositVO depositVO) {
		// TODO Auto-generated method stub
		return sql.insert("deposit.DepositDAO.insert", depositVO);
	}
	public int insertDepositOption(OptionVO option) {
		// TODO Auto-generated method stub
		return sql.insert("option.OptionDAO.insertDepositOption", option);
	}
	public int insertSavings(SavingsVO savingsVO) {
		// TODO Auto-generated method stub
		return sql.insert("savings.SavingsDAO.insert",savingsVO);
		
	}
	public int insertSavingsOption(OptionVO option) {
		// TODO Auto-generated method stub
		return sql.insert("option.OptionDAO.insertSavingsOption", option);
	}
	
	
}
