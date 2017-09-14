insert into schedule (no, employee_no, customer_no, location, type, comments,
							 start_date, end_date, reg_date, importance, repetition)
		values (schedule_seq.nextval, 1, 1, '주소1', 1, 'comment1', '20170901', '20170901', sysdate, 2, '한번')
		
select *
from schedule
where employee_no = 1
	and to_char(start_date, 'yyyymm')='201709'
		
select * from user_tables
select * from user_tab_columns

select *
from schedule s join customer c on (s.customer_no = c.no)
where s.no = 22
order by s.no desc