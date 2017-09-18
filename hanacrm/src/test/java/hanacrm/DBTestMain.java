package hanacrm;

import java.sql.SQLException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.co.bit.hanacrm.Customer.CusVO;

@RunWith(SpringJUnit4ClassRunner.class)
/*@ContextConfiguration(locations={"classpath:config/spring/spring-mvc.xml", 
		"classpath:config/mybatis/sqlMapConfig.xml", 
		"classpath:config/sqlmap/oracle/sqlmap-board.xml"})*/
@ContextConfiguration(locations={"classpath:config/**/*.xml"})
public class DBTestMain {
		
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
//	@Test
//	public void DB연결테스트() throws SQLException{
//		System.out.println(sqlSessionTemplate);
//			
//	}
	@Test
	@Transactional
	public void 고객CRUD() throws SQLException{
		//List<BoardVO> list = sqlSessionTemplate.selectList("board.dao.BoardDAO.selectAllBoard");
		//조회
//		List<CusVO> cusList = new ArrayList<>();
//		cusList = sqlSessionTemplate.selectList("cus.CusDAO.selectAll");
//		for(CusVO cus : cusList)
//			System.out.println(cus.getName());
		
		//create
//		CusVO cus = new CusVO();
//		cus.setName("고개1");
//		cus.setPhone("01012341234");
//		cus.setGrade("잠재");
//		cus.setBirthDate("19920118");
//		cus.setRegDate("19920118");
//		cus.setPost("12345");
//		cus.setAddress("서울");
//		cus.setEmployeeNo(21);
//		sqlSessionTemplate.insert("cus.CusDAO.insert", cus);
		
		//update
		int no =46;
		CusVO cus = new CusVO();//sqlSessionTemplate.selectOne("cus.CusDAO.selectByNo", no);
		cus.setNo(no);
		cus.setName("수정");
		cus.setPhone("0101231234");
		cus.setComments("수정본");;
		sqlSessionTemplate.update("cus.CusDAO.update",cus);
	} 
	
//	@Test
//	public void 매핑테스트() throws SQLException{
//		List<ConsultVO> consultList = new ArrayList<>();
//		int cusNo = 68;
//		consultList = sqlSessionTemplate.selectList("consult.ConsultDAO.selectTest", cusNo);
//		for(int i=0;i<consultList.size();i++){
//			System.out.println(consultList.get(i));
//		}
//	}
}
