create database query_solve;
use query_solve;
create table workers(
     emp_id int,
     attendance_date Date,
     check_in time,
     check_out time);
     
INSERT into workers(emp_id,attendance_date,check_in,check_out)
     values(101,'2025-10-27','09:00:00','12:00:00'),
     (101,'2025-10-27','11:00:00','17:00:00'),
     (102,'2025-10-27','09:30:00','18:00:00'),
     (101,'2025-10-28','09:15:00','17:45:00');
     
select*from workers;

select emp_id,attendance_date,
sum(timestampdiff(hour,check_in,check_out))as Total_working_hrs
from workers
group by emp_id,attendance_date;