insert into schedule (no, employee_no, customer_no, location, type, comments,
							 start_date, end_date, reg_date, importance, repetition)
		values (schedule_seq.nextval, 1, 46, '주소1', 'Meeting', 'comment1', '2017-09-20 11:10:00', '2017-09-20 12:10:00', sysdate, 2, '한번')
		
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

select *
from schedule
where employee_no = 1
	and '201709' between to_char(start_date, 'yyyymm') and to_char(end_date, 'yyyymm')
	
select *
from customer
order by no


update schedule set end_date = to_date('2017-09-20 10:00', 'YYYY-MM-DD hh:mi')
where no=201

select *
from schedule
where to_char(sysdate, 'yyyy-mm-dd') between to_char(start_date, 'yyyy-mm-dd') and  to_char(end_date, 'yyyy-mm-dd')

select di.no as no, replace(di.fin_prdt_nm, '\r'||chr(13)||chr(10), 'a') as name, count
from (
	select product_no, count(*) as count
	from CONSULT_PRODUCT
	group by type, product_no
	having type = 1	
	order by count desc, product_no desc
) join deposit_info di on (di.no = product_no)
where rownum<=3
