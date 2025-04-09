-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     january_jobs

-- UNION
-- --Get jobs and companies from Febuary
-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     february_jobs

-- UNION
-- --Get jobs and companies from March
-- SELECT 
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     march_jobs




SELECT 
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION ALL
--Get jobs and companies from Febuary
SELECT 
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs

UNION ALL 
--Get jobs and companies from March
SELECT 
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs


