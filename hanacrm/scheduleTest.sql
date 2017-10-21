insert into schedule (no, employee_no, customer_no, location, type, comments,
							 start_date, end_date, reg_date, importance, repetition)
		values (schedule_seq.nextval, 1, 46, '주소1', 'Meeting', 'comment1', '2017-09-20 11:10:00', '2017-09-20 12:10:00', sysdate, 2, '한번')
		
select location, type, comments, to_char(start_date, 'hh24:mi'), to_char(end_date, 'hh24:mi')
from schedule
where employee_no = 1
	and to_char(start_date, 'yyyymmdd')='20170928'
order by start_date, end_date
		
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


select no, employee_no, customer_no, name, phone, location, type, msg,
				to_char(start_date, 'yyyy-mm-dd hh24:mi') as startDate, to_char(end_date, 'yyyy-mm-dd hh24:mi') as endDate,
				status, reg_date, comments
from reservation
where employee_no = 1

select sysdate, to_date('2017-10-11 07:42', 'yyyy-mm-dd hh24:mi')+(1/24)
from dual

insert into reservation
values (0, 1, 1, '하얀탑', '11111111111', '테스트', 'Call', 'msg', to_date('2017-10-11 18:00', 'yyyy-mm-dd hh24:mi'), to_date('2017-10-11 18:30', 'yyyy-mm-dd hh24:mi'), 'D', sysdate, null)

update reservation
set	status = 'D'
where no = 0

delete from schedule where no=333

select count(status)
from reservation
where employee_no = #{no} and status=='D'

select sysdate
from dual

select *
from schedule
where employee_no = 1 and type = 'Meeting' and to_char(start_date, 'YYYY-MM-DD') = '2017-10-14'
order by start_date

select *
from customer

select *
from consult
where to_char(reg_date, 'YYYY-MM-DD') = '2017-10-12'


select *
from schedule s, consult c
where s.customer_no = c.customer_no and s.employee_no = 1
and type = 'Meeting'




insert into deposit_info values(deposit_info_seq.nextval, to_date('2016/06/20','yyyy/mm/dd'), '0013909','KEB하나은행','7','N플러스 정기예금',
'스마트폰','1개월 이내: 지급시점 해당기간 일반 정기예금 월이자지급식 기본금리의 1/2 1개월 초과 : 지급시점 해당기간 일반 정기예금 월이자지급식 기본금리의 1/4',
'최대 연	0.3% 우대 가능
이 예금 가입일 이후 3개월 이내에 아래의 조건 충족 시 최대 연0.3%우대금리를 만기해지 시 제공합니다.
① KEB하나은행 첫거래 고객 주1) 연0.1%
② 2회 이상 스마트폰뱅킹 이체거래 보유 연 0.1%
③ 주택청약종합저축 신규 가입 주2) 연 0.1%
④ 아파트관리비 신규 등록 후 이체실적 보유 주2) 연0.1%
⑤ 급여(연금)이체 신규 등록 후 이체실적 보유 주2) 연0.1%
⑥ 하나멤버스 앱으로 1회 이상 추가 로그인 기록 보유 연0.1%
주1) 이 예금 가입 전월 말 기준 KEB하나은행 은행계정 예금계좌를(입출금이 자유로운 예금 포함) 보유하고 있지 않은 고객 
주2) 이 예금 가입 전월 기준 KEB하나은행의 주택청약종합저축 미가입 또는 아파트 관리비(급여) 이체 무실적 고객이 이 예금 가입 후 주택청약종합저축 가입 또는 아파트관리비(급여) 이체 유실적 시 인정',
1,'실명의 개인',
'1만원 이상~3천만원 이내(원 단위) (1인당 가입한도 최고 3천만원)',
30000000,to_date('2017/08/31','yyyy/mm/dd'),to_date('2100/01/01','yyyy/mm/dd'),to_date('2017/08/31','yyyy/mm/dd'),'S');


insert into contract values (contract_seq.nextval, 1, 1, '20170902', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 305, '20170908', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 302, '20170911', '스마트자유적금 가입', 2, 60);
insert into contract values (contract_seq.nextval, 1, 307, '20170913', '스마트자유적금 가입', 2, 61);
insert into contract values (contract_seq.nextval, 1, 304, '20170919', '리틀빅 정기예금 가입', 1, 281);

insert into contract values (contract_seq.nextval, 1, 305, '20170921', '스마트자유적금 가입', 2, 61);
insert into contract values (contract_seq.nextval, 1, 322, '20170922', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 361, '20170922', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 190, '20170924', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 325, '20170927', '하나머니세상 정기예금 가입', 1, 241);

insert into contract values (contract_seq.nextval, 1, 306, '20170929', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 187, '20170930', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 302, '20170930', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 307, '20170930', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 190, '20170930', '하나머니세상 정기예금 가입', 1, 241);


insert into contract values (contract_seq.nextval, 1, 321, '20170802', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170803', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170803', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170804', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170807', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170811', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170822', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170822', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 190, '20170824', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 306, '20170827', '하나머니세상 정기예금 가입', 1, 241);

insert into contract values (contract_seq.nextval, 1, 187, '20170829', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 190, '20170830', '하나머니세상 정기예금 가입', 1, 241);


insert into contract values (contract_seq.nextval, 1, 321, '20170702', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170703', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170703', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170704', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170707', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170711', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170722', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170722', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 361, '20170711', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170722', '리틀빅 정기예금 가입', 1, 281);

insert into contract values (contract_seq.nextval, 1, 321, '20170722', '두리하나 정기예금 가입', 1, 240);


insert into contract values (contract_seq.nextval, 1, 321, '20170602', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170603', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170603', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170604', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170607', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170611', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170622', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170622', '두리하나 정기예금 가입', 1, 240);


insert into contract values (contract_seq.nextval, 1, 321, '20170502', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170503', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170503', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170504', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170507', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170511', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170522', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170522', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 361, '20170522', '두리하나 정기예금 가입', 1, 240);


insert into contract values (contract_seq.nextval, 1, 321, '20170402', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170403', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170403', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170404', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170407', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170411', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170422', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170422', '두리하나 정기예금 가입', 1, 240);


insert into contract values (contract_seq.nextval, 1, 321, '20170302', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170303', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170303', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170304', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170307', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170311', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170322', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170322', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170322', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170322', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 321, '20170322', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170322', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170322', '두리하나 정기예금 가입', 1, 240);


insert into contract values (contract_seq.nextval, 1, 321, '20170102', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170103', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170103', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170104', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170107', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 321, '20170102', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 283, '20170103', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170103', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 321, '20170104', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 283, '20170107', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 361, '20170111', '하나머니세상 정기예금 가입', 1, 241);
insert into contract values (contract_seq.nextval, 1, 326, '20170122', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170122', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170122', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170122', '두리하나 정기예금 가입', 1, 240);

insert into contract values (contract_seq.nextval, 1, 321, '20170122', '두리하나 정기예금 가입', 1, 240);
insert into contract values (contract_seq.nextval, 1, 326, '20170122', '리틀빅 정기예금 가입', 1, 281);
insert into contract values (contract_seq.nextval, 1, 321, '20170122', '두리하나 정기예금 가입', 1, 240);


