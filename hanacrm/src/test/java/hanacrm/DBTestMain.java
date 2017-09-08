package hanacrm;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.bit.hanacrm.Customer.CusVO;

@RunWith(SpringJUnit4ClassRunner.class)
/*@ContextConfiguration(locations={"classpath:config/spring/spring-mvc.xml", 
		"classpath:config/mybatis/sqlMapConfig.xml", 
		"classpath:config/sqlmap/oracle/sqlmap-board.xml"})*/
@ContextConfiguration(locations={"classpath:config/**/*.xml"})
public class DBTestMain {
		
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Test
	public void DB연결테스트() throws SQLException{
		System.out.println(sqlSessionTemplate);
			
	}
	@Test
	public void 고객CRUD() throws SQLException{
		//List<BoardVO> list = sqlSessionTemplate.selectList("board.dao.BoardDAO.selectAllBoard");
		//조회
		List<CusVO> cusList = new ArrayList<>();
		cusList = sqlSessionTemplate.selectList("cus.CusDAO.selectAll");
		for(CusVO cus : cusList)
			System.out.println(cus.getName());
	} 
}
