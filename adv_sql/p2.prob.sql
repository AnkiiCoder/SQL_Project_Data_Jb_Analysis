SELECT COUNT(job_id) AS no_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'ONsite'
    END AS location_category
FROM job_postings_fact
WHERE 
 job_title_short = 'Data Analyst'
GROUP BY location_category
ORDER BY no_of_jobs DESC;