package kr.co.bit.hanacrm.Region;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegionDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public List<RegionVO> select() {
		// TODO Auto-generated method stub
		return sql.selectList("region.RegionDAO.select");
	}

	public RegionVO select(int no) {
		// TODO Auto-generated method stub
		return sql.selectOne("region.RegionDAO.selectByNo",no);
	}
	
	
}
