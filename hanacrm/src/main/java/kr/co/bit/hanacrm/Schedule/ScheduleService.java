package kr.co.bit.hanacrm.Schedule;

import java.sql.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleService {
	
	@Autowired
	private ScheduleDAO scheduleDAO;

	public List<ScheduleVO> schedule(Date date) {
		return scheduleDAO.schedule(date);
	}

}
