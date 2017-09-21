package kr.co.bit.hanacrm.Schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.hanacrm.Customer.CusDAO;
import kr.co.bit.hanacrm.Customer.CusVO;

@Service
public class ScheduleService {
	
	@Autowired
	private ScheduleDAO scheduleDAO;

	@Autowired
	private CusDAO cusDAO;

	// 일정 전체 리스트
	public List<ScheduleVO> selectListAll(int employeeNo) {
		List<ScheduleVO> list = scheduleDAO.selectListAll(employeeNo);
		for(int i=0; i<list.size(); i++) {
			ScheduleVO s = list.get(i);
			s.setCustomer(cusDAO.detail(s.getCustomerNo()));
		}
		return list;
	}
	
	// n월 일정
	public List<ScheduleVO> selectList(ScheduleVO schedule) {
		List<ScheduleVO> list = scheduleDAO.selectList(schedule);
		for(int i=0; i<list.size(); i++) {
			ScheduleVO s = list.get(i);
			s.setCustomer(cusDAO.detail(s.getCustomerNo()));
		}
		return list;
	}
	
	// 일정 추가
	public int insert(ScheduleVO schedule) {
		int scheduleNo = scheduleDAO.selectSeq();
	//	ScheduleVO result = new ScheduleVO();
		
		if(scheduleNo>0) {
			schedule.setNo(scheduleNo);
			/*if(scheduleDAO.insert(schedule)==1) {
				result.setNo(scheduleNo);
				CusVO customer = cusDAO.detail(schedule.getCustomerNo());
				result.setCustomer(customer);
			}*/
			scheduleDAO.insert(schedule);
			System.out.println(schedule);
		}else {
			scheduleNo = 0;
		}
		
		return scheduleNo;
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
		
		ScheduleVO schedule = scheduleDAO.selectByNo(no);

		// cusDAO 에서 고객 정보 받아오기
		CusVO customer = new CusVO();
		schedule.getCustomerNo();
		
		schedule.setCustomer(customer);
		return schedule;
	}

	// 타입별 일정 리스트
	public List<ScheduleVO> selectListByType(ScheduleVO schedule) {
		List<ScheduleVO> list = scheduleDAO.selectListByType(schedule);
		
		for(int i=0; i<list.size(); i++) {
			ScheduleVO s = list.get(i);
			s.setCustomer(cusDAO.detail(s.getCustomerNo()));
		}
		return list;
	}

}
