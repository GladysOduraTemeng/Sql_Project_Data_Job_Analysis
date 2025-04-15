-- What are the top skills based on salary?
-- Look at the average salary associated with each skill for data analyst positions.
-- Focuses on roles with the specified salaries, regardless of job_location.
-- Why? Reveals how different skills impact salary levels for data analyst and
-- helps Identify the most financially rewarding skills to aucquire or improve. 

SELECT 
    skills,
   ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Engineer' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = True
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
Here is the breakdown of the results for top paying skills
-- Specialized & Hybrid Skills = Higher Pay: Roles demanding niche languages (like Assembly, Rust, Clojure) or 
hybrid skills (data + backend + infra) command top salaries.
-- Modern Data Stack is Hot: Tools like MongoDB, Kafka, Redis, FastAPI, and GraphQL are central to high-paying,
real-time, and scalable data pipeline roles.
-- Data Engineers Are Evolving: Employers value engineers who understand data science workflows (NumPy, ggplot2) 
and can deploy infrastructure (Kubernetes, Splunk) as well.

[
  {
    "skills": "assembly",
    "avg_salary": "192500"
  },
  {
    "skills": "mongo",
    "avg_salary": "182223"
  },
  {
    "skills": "ggplot2",
    "avg_salary": "176250"
  },
  {
    "skills": "rust",
    "avg_salary": "172819"
  },
  {
    "skills": "clojure",
    "avg_salary": "170867"
  },
  {
    "skills": "perl",
    "avg_salary": "169000"
  },
  {
    "skills": "neo4j",
    "avg_salary": "166559"
  },
  {
    "skills": "solidity",
    "avg_salary": "166250"
  },
  {
    "skills": "graphql",
    "avg_salary": "162547"
  },
  {
    "skills": "julia",
    "avg_salary": "160500"
  },
  {
    "skills": "splunk",
    "avg_salary": "160397"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "160333"
  },
  {
    "skills": "zoom",
    "avg_salary": "159000"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "158190"
  },
  {
    "skills": "numpy",
    "avg_salary": "157592"
  },
  {
    "skills": "mxnet",
    "avg_salary": "157500"
  },
  {
    "skills": "fastapi",
    "avg_salary": "157500"
  },
  {
    "skills": "redis",
    "avg_salary": "157000"
  },
  {
    "skills": "trello",
    "avg_salary": "155000"
  },
  {
    "skills": "jquery",
    "avg_salary": "151667"
  },
  {
    "skills": "express",
    "avg_salary": "151636"
  },
  {
    "skills": "cassandra",
    "avg_salary": "151282"
  },
  {
    "skills": "unify",
    "avg_salary": "151000"
  },
  {
    "skills": "kafka",
    "avg_salary": "150549"
  },
  {
    "skills": "vmware",
    "avg_salary": "150000"
  }
]
*/