SELECT teachers.name AS teachers_name, count(assistance_requests.*) AS total_assistance_requests
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;