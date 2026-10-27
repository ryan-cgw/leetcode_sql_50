-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
SELECT
    st.student_id,
    st.student_name,
    su.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students st
CROSS JOIN Subjects su
LEFT OUTER JOIN Examinations e
    USING(student_id, subject_name)
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id, su.subject_name;
