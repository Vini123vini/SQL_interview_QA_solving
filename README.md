# 📘 SQL Interview Practice – Working Hours Calculation

This task focuses on solving a real-world SQL interview question related to employee attendance and working hours calculation.

---

## 📌 Problem Statement

Calculate the **total working hours per employee per day** when:
- An employee may have **multiple check-in and check-out entries** on the same day.
- Working hours should be calculated accurately by summing all time intervals.

---

## 🗂 Database Used

**Database Name:** `query_solve`

---

## 📊 Table Structure

### Workers Table
```sql
CREATE TABLE workers (
    emp_id INT,
    attendance_date DATE,
    check_in TIME,
    check_out TIME
);
INSERT INTO workers VALUES
(101,'2025-10-27','09:00:00','12:00:00'),
(101,'2025-10-27','11:00:00','17:00:00'),
(102,'2025-10-27','09:30:00','18:00:00'),
(101,'2025-10-28','09:15:00','17:45:00');

SELECT emp_id,
       attendance_date,
       SUM(TIMESTAMPDIFF(HOUR, check_in, check_out)) AS total_working_hrs
FROM workers
GROUP BY emp_id, attendance_date;
