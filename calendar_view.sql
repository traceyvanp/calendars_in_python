create table test_1 as (select id, amount, period, product, start_date, end_date, datediff(end_date, start_date) as 'contract_days' from random_data);
select * from test_1;
create table test_2 as (select id, amount, period, product, start_date, end_date, contract_days, amount/contract_days as 'amount_day' from test_1);

create table test_3 as (select *,
case 
	when date_format(start_date, '%m-%Y') = '01-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '01-2016' AND date_format(end_date, '%m-%Y') > '01-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '01-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '01-2016',

case 
	when date_format(start_date, '%m-%Y') = '02-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '02-2016' AND date_format(end_date, '%m-%Y') > '02-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '02-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '02-2016',

case 
	when date_format(start_date, '%m-%Y') = '03-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '03-2016' AND date_format(end_date, '%m-%Y') > '03-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '03-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '03-2016',

case 
	when date_format(start_date, '%m-%Y') = '04-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '04-2016' AND date_format(end_date, '%m-%Y') > '04-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '04-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '04-2016',

case 
	when date_format(start_date, '%m-%Y') = '05-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '05-2016' AND date_format(end_date, '%m-%Y') > '05-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '05-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '05-2016',

case 
	when date_format(start_date, '%m-%Y') = '06-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '06-2016' AND date_format(end_date, '%m-%Y') > '06-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '06-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '06-2016',

case 
	when date_format(start_date, '%m-%Y') = '07-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '07-2016' AND date_format(end_date, '%m-%Y') > '07-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '07-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '07-2016',

case 
	when date_format(start_date, '%m-%Y') = '08-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '08-2016' AND date_format(end_date, '%m-%Y') > '08-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '08-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '08-2016',

case 
	when date_format(start_date, '%m-%Y') = '09-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '09-2016' AND date_format(end_date, '%m-%Y') > '09-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '09-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '09-2016',

case 
	when date_format(start_date, '%m-%Y') = '10-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '10-2016' AND date_format(end_date, '%m-%Y') > '10-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '10-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '10-2016',

case 
	when date_format(start_date, '%m-%Y') = '11-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '11-2016' AND date_format(end_date, '%m-%Y') > '11-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '11-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '11-2016',

case 
	when date_format(start_date, '%m-%Y') = '12-2016' then ((DAY(LAST_DAY(`start_date`)) - DAYOFMONTH(`start_date`)) * amount_day)
	when date_format(start_date, '%m-%Y') < '12-2016' AND date_format(end_date, '%m-%Y') > '12-2016' then (DAY(LAST_DAY(`start_date`)) * amount_day)
	when date_format(end_date, '%m-%Y') = '12-2016' then ((DAY(LAST_DAY(`end_date`)) - DAYOFMONTH(`end_date`)) * amount_day)
	else 0
end as '12-2016'

from test_2);

select id, amount, period, product, start_date, end_date, contract_days, amount_day, `01-2016` + `02-2016` + `03-2016` + `04-2016` + `05-2016` + `06-2016` + `07-2016` + `08-2016` + `09-2016` + `10-2016` + `11-2016` + `12-2016` as '2016_total', `01-2016`, `02-2016`, `03-2016`, `04-2016`, `05-2016`, `06-2016`, `07-2016`, `08-2016`, `09-2016`, `10-2016`, `11-2016`, `12-2016` from test_3;

	