select * from tech_jobs limit 10


--Average salary by role

SELECT job_title,
       ROUND(AVG(salary), 2) AS avg_salary
FROM tech_jobs
GROUP BY job_title
ORDER BY avg_salary DESC;


--Average salary by experience

SELECT experience_level,
       ROUND(AVG(salary), 2) AS avg_salary
FROM tech_jobs
GROUP BY experience_level
ORDER BY avg_salary DESC;


--Highest paying locations

SELECT country,
       ROUND(AVG(salary), 2) AS avg_salary
FROM tech_jobs
GROUP BY country
ORDER BY avg_salary DESC
LIMIT 10;


--In demand roles

SELECT job_title,
       COUNT(*) AS demand
FROM tech_jobs
GROUP BY job_title
ORDER BY demand DESC;


--Salary distribution by roles

SELECT job_title,
       MIN(salary) AS min_salary,
       MAX(salary) AS max_salary,
       ROUND(AVG(salary), 2) AS avg_salary
FROM tech_jobs
GROUP BY job_title
ORDER BY avg_salary DESC;


--Highest paying roles

SELECT job_title, salary
FROM tech_jobs
ORDER BY salary DESC
LIMIT 5;


--Remote and on-site comparision

SELECT remote_type,
       ROUND(AVG(salary), 2) AS avg_salary
FROM tech_jobs
GROUP BY remote_type;


--Salary Variability

SELECT job_title,
       ROUND(STDDEV(salary), 2) AS salary_std_dev
FROM tech_jobs
GROUP BY job_title
ORDER BY salary_std_dev DESC;

