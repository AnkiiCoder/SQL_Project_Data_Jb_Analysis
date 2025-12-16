SELECT job_title_short,
job_location,
salary_hour_avg AS salary,
    CASE 
        WHEN salary_hour_avg < 50 THEN 'LOW'
        WHEN salary_hour_avg < 200 THEN 'MEDIUM'
        WHEN salary_hour_avg < 300 THEN 'HIGH'
        WHEN salary_hour_avg >= 300 THEN 'ELITE'
        ELSE 'NULL'
    END AS salary_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
ORDER BY salary_hour_avg DESC NULLS LAST;