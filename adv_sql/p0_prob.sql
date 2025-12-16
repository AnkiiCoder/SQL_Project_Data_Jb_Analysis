SELECT job_title_short AS title,
    AVG(salary_year_avg) AS year_avg,
    AVG(salary_hour_avg) AS hour_avg
FROM job_postings_fact
WHERE (
        salary_year_avg > 0
        OR salary_hour_avg > 0
    )
    AND job_posted_date > '2023-06-01'
GROUP BY title
LIMIT 10;