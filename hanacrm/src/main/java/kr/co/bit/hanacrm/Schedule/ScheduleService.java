package kr.co.bit.hanacrm.Schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleService {
	
	@Autowired
	private ScheduleDAO scheduleDAO;

	// 일정 관리
	public List<ScheduleVO> selectList(ScheduleVO schedule) {
		return scheduleDAO.selectList(schedule);
	}
	
	// 일정 추가
	public int insert(ScheduleVO schedule) {
		return scheduleDAO.insert(schedule);
	}
	
	// 일정 수정
	public int update(ScheduleVO schedule) {
		return scheduleDAO.update(schedule);
	}
	
	// 일정 삭제
	public int delete(int no) {
		return scheduleDAO.delete(no);
	}

	// 일정 상세정보
	public ScheduleVO selectByNo(int no) {
		return scheduleDAO.selectByNo(no);
	}

}
