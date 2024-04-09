CREATE DATABASE IF NOT EXISTS india_demographics;
USE india_demographics;
select * from `india-state-wise-data-analysis`;
CREATE TABLE IF NOT EXISTS demographics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    district_code INT,
    state_name VARCHAR(255),
    district_name VARCHAR(255),
    population INT,
    male INT,
    female INT,
    literate INT,
    male_literate INT,
    female_literate INT,
    sc INT,
    male_sc INT,
    female_sc INT,
    secondary_education INT,
    higher_education INT,
    graduate_education INT,
    other_education INT,
    literate_education INT,
    illiterate_education INT,
    total_education INT,
    age_group_0_29 INT,
    age_group_30_49 INT,
    age_group_50 INT
);

CREATE TABLE IF NOT EXISTS education_stats (
    stats_id INT AUTO_INCREMENT PRIMARY KEY,
    demographics_id INT,
    total_schools INT,
    colleges INT,
    universities INT,
    FOREIGN KEY (demographics_id) REFERENCES demographics(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS healthcare_stats (
    health_id INT AUTO_INCREMENT PRIMARY KEY,
    demographics_id INT,
    hospitals INT,
    clinics INT,
    healthcare_workers INT,
    FOREIGN KEY (demographics_id) REFERENCES demographics(id) ON DELETE CASCADE
);

select * from healthcare_stats;
select * from education_stats;
select * from demographics;