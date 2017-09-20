package kr.co.bit.hanacrm.Schedule;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	// 일정 전체 리스트
	public List<ScheduleVO> selectListAll(int employeeNo) {
		return sqlSessionTemplate.selectList("schedule.ScheduleDAO.selectListAll", employeeNo);
	}
	
	// n월 일정
	public List<ScheduleVO> selectList(ScheduleVO schedule) {
		return sqlSessionTemplate.selectList("schedule.ScheduleDAO.selectList", schedule);
	}

	// 일정 추가
	public int insert(ScheduleVO schedule) {
		return sqlSessionTemplate.insert("schedule.ScheduleDAO.insert", schedule);
	}

	// 일정 수정
	public int update(ScheduleVO schedule) {
		return sqlSessionTemplate.update("schedule.ScheduleDAO.update", schedule);
	}
	
	// 일정 삭제
	public int delete(int no) {
		return sqlSessionTemplate.delete("schedule.ScheduleDAO.delete", no);
	}
	
	// 일정 상세정보
	public ScheduleVO selectByNo(int no) {
		return sqlSessionTemplate.selectOne("schedule.ScheduleDAO.selectByNo", no);
	}

	// 타입별 일정 리스트
	public List<ScheduleVO> selectListByType(ScheduleVO schedule) {
		return sqlSessionTemplate.selectList("schedule.ScheduleDAO.selectListByType",schedule);
	}

	// 추가할 스케쥴 번호 받아오기
	public int selectSeq(){
		return sqlSessionTemplate.selectOne("schedule.ScheduleDAO.selectSeq");
	}
}
