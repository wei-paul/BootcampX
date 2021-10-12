SELECT students.name AS student_name, AVG(assignment_submissions.duration) AS average_completion_time
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student_name
ORDER BY AVG(assignment_submissions.duration)DESC;
