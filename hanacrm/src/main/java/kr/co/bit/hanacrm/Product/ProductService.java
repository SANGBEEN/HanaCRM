package kr.co.bit.hanacrm.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.hanacrm.Main.MainVO;

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
		System.out.println("productSelectByNo - Service");
		switch (type) {
		case 1:
			System.out.println("selectDepositByNo");
			DepositVO depositVO = productDAO.selectDepositByNo(no);
			depositVO.setOptionList(productDAO.selectDepositOption(depositVO.getFinPrdtCd()));
			return depositVO;
		case 2:
			System.out.println("selectSavingsByNo");
			SavingsVO savingsVO = productDAO.selectSavingsByNo(no);
			savingsVO.setOptionList(productDAO.selectDepositOption(savingsVO.getFinPrdtCd()));
			return savingsVO;
		case 3:
			System.out.println("selectCardByNo");
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

	public List<MainVO> selectTopDeposit() {
		return productDAO.selectTopDeposit();
	}

	public List<MainVO> selectTopSavings() {
		return productDAO.selectTopSavings();
	}
}
