# Write your MySQL query statement below
select s.student_id, s.student_name, st.subject_name,
(select count(*) from examinations e
where e.student_id = s.student_id and st.subject_name = e.subject_name)
as attended_exams
from students s
cross join subjects st
order by s.student_id, st.subject_name;