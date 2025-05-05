create database nsg;
use nsg;
create table squard (batch_no int primary key auto_increment,name varchar(20),code_name char(10),entry_time_data timestamp default current_timestamp);
insert into team (name,code_name) values('pavan','pav');
select* from squard;
alter table team 
add team_member varchar(20);
alter table team 
drop team_member;
alter table team rename  to squard;
delete from squard
where name='pavan';
truncate  squard;
update squard 
set name ='vineet'
where code_name='pav';
select name , salary from gfg.sample_data;
select*,salary/( select sum(salary) from gfg.sample_data)*100 as percentage from gfg.sample_data;
select*,salary*1.1  as new_salary from gfg.sample_data;
select distinct(department) from gfg.sample_data;
select distinct department,country from gfg.sample_data;
select distinct id from gfg.sample_data;
select age,department,salary from gfg.sample_data where age>30 and department='hr' and salary>60000;
select* from gfg.sample_data where department not in ('hr');
select* from gfg.sample_data where salary between 30000 and 100000;
select* from gfg.sample_data where department != ('hr');
select* from gfg.sample_data where department <> ('hr');
select* from gfg.sample_data where department not in ('hr') and salary>117977;
select
max(age) as max_age,
min(age) as min_age,
avg(age) as avg_age, 
count(age) as count_age
from gfg.sample_data;
select round(avg(salary)/sum(salary)*100) from gfg.sample_data;
select count(distinct department) from gfg.sample_data;
select distinct (country),upper (country) from gfg.sample_data;
select distinct (country),lower (country) from gfg.sample_data;
select distinct (country),length (country) from gfg.sample_data;
select salary from gfg.sample_data order by department desc limit 25,25;
select salary from gfg.sample_data order by department desc limit 25 offset 25;
select avg(salary) from gfg.sample_data where department='finance';
select avg(salary),count(name) from gfg.sample_data  group by department,salary having department='hr';
select distinct department,avg(salary),count(name),max(age),count(distinct country) from gfg.sample_data
group by department having count(*)>10;
select avg(salary),country,avg(age) from gfg.sample_data group by country;
select  distinct department,country,round(avg(salary)),sum(salary),count(id) from gfg.sample_data group by country,department
order by country;
select country,avg(salary) from gfg.sample_data group by country having avg(salary)>80000;
select department,
avg(age),
count(name)as number_people from gfg.sample_data 
group by department having number_people>9 and avg(age)<40;
 

 






 














