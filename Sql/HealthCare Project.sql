CREATE DATABASE healthcare_project;
USE healthcare_project;

select count(*) from patients;
desc patients;
SELECT *FROM patients LIMIT 10;

## Readmission Rate 
select readmitted_flag, count(*) as total
from patients
group by readmitted_flag;

## Age Group Analysis
select age_group, count(*) as total from patients
where readmitted_flag = "Yes"
group by age_group
order by total desc;

## Length of Stay Analysis
select time_in_hospital,count(*) AS total
FROM patients
WHERE readmitted_flag = "Yes"
group by time_in_hospital 
order by total;

## Medication Analysis
select num_medications, count(*) as total
from patients
where readmitted_flag = "Yes"
group by num_medications
order by num_medications;

## Patient History (Advanced Insight)
select number_inpatient, count(*) as total
from patients
where readmitted_flag = "Yes"
group by number_inpatient
order by number_inpatient desc;