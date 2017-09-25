package kr.co.bit.hanacrm.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;

	public List<ProductVO> selectList(int type) {
		System.out.println("productService");
		switch (type) {
		case 1:
			System.out.println("selectDepositList");
			return productDAO.selectDepositList();
		case 2:
			System.out.println("selectSavingsList");
			return productDAO.selectSavingsList();	
		case 3:
			System.out.println("selectCardList");
			return productDAO.selectCardList();
		default:
			return null;
		}		
	}

	public ProductVO selectByNo(int type, int no) {
		switch (type) {
		case 1:
			System.out.println("selectDepositList");
			return productDAO.selectDepositByNo(no);
		case 2:
			System.out.println("selectSavingsList");
			return productDAO.selectSavingsByNo(no);	
		case 3:
			System.out.println("selectCardList");
			return productDAO.selectCardByNo(no);
		default:
			return null;
		}		
	}

	public int insertDeposit(List<DepositVO> depositList, List<OptionVO> optionList) {
		int result=0;

		for(int i=0;i<depositList.size();i++){
			productDAO.insertDeposit(depositList.get(i));
			result++;
			System.out.println(result);
		}

		for(int i=0;i<optionList.size();i++){
			productDAO.insertDepositOption(optionList.get(i));
			result++;
			System.out.println(result);
		}

		return result;
	}

	public int insertSavings(List<SavingsVO> savingsList, List<OptionVO> optionList) {
		int result=0;
		for(int i=0;i<savingsList.size();i++){
			productDAO.insertSavings(savingsList.get(i));
			result++;
			System.out.println(result);
		}
		//		for(int i=0;i<savingsList.size();i++){
		//			pDao.insertSavings(savingsList.get(i));
		//			result++;
		//			System.out.println(result);
		//		}
		for(int i=0;i<optionList.size();i++){
			productDAO.insertSavingsOption(optionList.get(i));
			result++;
			System.out.println(result);
		}

		return result;
	}

}
