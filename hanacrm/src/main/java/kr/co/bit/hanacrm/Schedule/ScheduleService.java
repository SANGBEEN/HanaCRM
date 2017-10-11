package kr.co.bit.hanacrm.Schedule;

import java.util.ArrayList;
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
			if(s.getCustomerNo()!=null) {
				s.setCustomer(cusDAO.detail(s.getCustomerNo()));
			} else {
				s.setCustomer(new CusVO());
			}
		}
		return list;
	}

	// n월 일정
	public List<ScheduleVO> selectList(ScheduleVO schedule) {
		List<ScheduleVO> list = scheduleDAO.selectList(schedule);
		for(int i=0; i<list.size(); i++) {
			ScheduleVO s = list.get(i);
			if(s.getCustomerNo()!=null) {
				s.setCustomer(cusDAO.detail(s.getCustomerNo()));
			} else {
				s.setCustomer(new CusVO());
			}
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

		if(schedule.getCustomerNo()!=null) {
			// cusDAO 에서 고객 정보 받아오기
			CusVO customer = new CusVO();
			customer = cusDAO.detail(schedule.getCustomerNo());
			schedule.setCustomer(customer);
		} else {
			schedule.setCustomer(new CusVO());
		}
		return schedule;
	}

	// 타입별 일정 리스트
	public List<ScheduleVO> selectListByType(ScheduleVO schedule) {
		List<ScheduleVO> list = scheduleDAO.selectListByType(schedule);
		
		for(int i=0; i<list.size(); i++) {
			ScheduleVO s = list.get(i);
			if(s.getCustomerNo()!=null) {
				s.setCustomer(cusDAO.detail(s.getCustomerNo()));
			} else {
				s.setCustomer(new CusVO());
			}
		}
		return list;
	}

	// 날짜별 일정 가능한 시간대
	public List<String> selectTimeList(ScheduleVO schedule) {
		List<String> timeList = new ArrayList<>();
		List<ScheduleVO> list = scheduleDAO.selectTimeList(schedule);
		
		for(ScheduleVO vo : list) {
			vo.getStartDate();
		}
		
		return timeList;
	}

	// 예약 신청 내역 조회
	public List<ScheduleVO> selectReservation(Integer no) {
		List<ScheduleVO> list = scheduleDAO.selectReservation(no);
		
		for(int i=0; i<list.size(); i++) {
			ScheduleVO s = list.get(i);
			if(s.getCustomerNo()!=null) {
				s.setCustomer(cusDAO.detail(s.getCustomerNo()));
			} else {
				s.setCustomer(new CusVO());
			}
		}
		
		return list;
	}

	// 신청 수락/거절
	public int updateReservation(ScheduleVO reservation) {
		// 1. 상태 변경
		int result = scheduleDAO.updateReservation(reservation);
		
		// 2. 수락 시 일정 추가
		if(result==1 && reservation.getStatus().equals("Y")) {
			int scheduleNo = scheduleDAO.selectSeq();
			
			if(scheduleNo>0) {
				reservation.setStartDate("2017-10-11 11:00");
				reservation.setEndDate("2017-10-11 13:00");
				reservation.setNo(scheduleNo);
				reservation.setImportance(3);
				reservation.setRepetition("한번");
				result = scheduleDAO.insert(reservation);
			}else {
				System.out.println("예약 신청 수락 시 일정 추가 에러");
			}
		}else {
			System.out.println("예약 신청 수락 처리 에러");
		}
		
		return result;
	}

}
