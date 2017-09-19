package kr.co.bit.hanacrm.Region;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegionService {
	@Autowired
	private RegionDAO regionDAO;

	public List<RegionVO> list() {
		// TODO Auto-generated method stub
		return regionDAO.select();
	}
	public RegionVO list(int no) {
		// TODO Auto-generated method stub
		return regionDAO.select(no);
	}
	
	
}
