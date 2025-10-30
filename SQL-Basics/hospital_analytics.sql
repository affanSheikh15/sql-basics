-- 1. Create and use the database
CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- 2. Create patients table
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    zip_code VARCHAR(10),
    admission_date DATE,
    discharge_date DATE
);

-- 3. Create resources table
CREATE TABLE resources (
    resource_id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50), -- e.g., bed, ventilator
    total_count INT,
    available_count INT
);

-- 4. Create ER logs table
CREATE TABLE er_logs (
    er_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    checkin_time DATETIME,
    severity_level VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- 5. Create doctors table
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    shift_start TIME,
    shift_end TIME
);

-- 6. Create appointments table
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_time DATETIME,
    reason VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- 7. Create SPARCS public health table
CREATE TABLE sparcs_data (
    hospital_service_area VARCHAR(100),
    hospital_county VARCHAR(100),
    operating_certificate_number INT,
    permanent_facility_id INT,
    facility_name VARCHAR(255),
    age_group VARCHAR(50),
    zip_code_3_digits VARCHAR(10),
    gender VARCHAR(20),
    race VARCHAR(50),
    ethnicity VARCHAR(50),
    length_of_stay INT,
    type_of_admission VARCHAR(100),
    patient_disposition VARCHAR(100),
    discharge_year INT,
    ccsr_diagnosis_code VARCHAR(20),
    ccsr_diagnosis_description TEXT,
    ccsr_procedure_code VARCHAR(20),
    ccsr_procedure_description TEXT,
    apr_drg_code INT,
    apr_drg_description TEXT,
    apr_mdc_code INT,
    apr_mdc_description TEXT,
    apr_severity_of_illness_code INT,
    apr_severity_of_illness_description VARCHAR(100),
    apr_risk_of_mortality VARCHAR(50),
    apr_medical_surgical_description VARCHAR(100),
    payment_typology_1 VARCHAR(100),
    payment_typology_2 VARCHAR(100),
    payment_typology_3 VARCHAR(100),
    birth_weight INT,
    emergency_department_indicator VARCHAR(10),
    total_charges DECIMAL(15,2),
    total_costs DECIMAL(15,2)
);

-- Optional: Turn off strict mode for empty string handling
SET sql_mode = '';

-- 8. Load data from 5 chunked files into sparcs_data
TRUNCATE TABLE sparcs_data;

-- Part 1
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sparcs_chunk_1.csv'
INTO TABLE sparcs_data
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    hospital_service_area, hospital_county, operating_certificate_number, permanent_facility_id,
    facility_name, age_group, zip_code_3_digits, gender, race, ethnicity, length_of_stay,
    type_of_admission, patient_disposition, discharge_year, ccsr_diagnosis_code, ccsr_diagnosis_description,
    ccsr_procedure_code, ccsr_procedure_description, apr_drg_code, apr_drg_description,
    apr_mdc_code, apr_mdc_description, apr_severity_of_illness_code, apr_severity_of_illness_description,
    apr_risk_of_mortality, apr_medical_surgical_description, payment_typology_1,
    payment_typology_2, payment_typology_3, birth_weight, emergency_department_indicator,
    total_charges, total_costs
);

-- Part 2
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sparcs_chunk_2.csv'
INTO TABLE sparcs_data
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    hospital_service_area, hospital_county, operating_certificate_number, permanent_facility_id,
    facility_name, age_group, zip_code_3_digits, gender, race, ethnicity, length_of_stay,
    type_of_admission, patient_disposition, discharge_year, ccsr_diagnosis_code, ccsr_diagnosis_description,
    ccsr_procedure_code, ccsr_procedure_description, apr_drg_code, apr_drg_description,
    apr_mdc_code, apr_mdc_description, apr_severity_of_illness_code, apr_severity_of_illness_description,
    apr_risk_of_mortality, apr_medical_surgical_description, payment_typology_1,
    payment_typology_2, payment_typology_3, birth_weight, emergency_department_indicator,
    total_charges, total_costs
);

-- Part 3
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sparcs_chunk_3.csv'
INTO TABLE sparcs_data
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    hospital_service_area, hospital_county, operating_certificate_number, permanent_facility_id,
    facility_name, age_group, zip_code_3_digits, gender, race, ethnicity, length_of_stay,
    type_of_admission, patient_disposition, discharge_year, ccsr_diagnosis_code, ccsr_diagnosis_description,
    ccsr_procedure_code, ccsr_procedure_description, apr_drg_code, apr_drg_description,
    apr_mdc_code, apr_mdc_description, apr_severity_of_illness_code, apr_severity_of_illness_description,
    apr_risk_of_mortality, apr_medical_surgical_description, payment_typology_1,
    payment_typology_2, payment_typology_3, birth_weight, emergency_department_indicator,
    total_charges, total_costs
);

-- Part 4
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sparcs_chunk_4.csv'
INTO TABLE sparcs_data
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    hospital_service_area, hospital_county, operating_certificate_number, permanent_facility_id,
    facility_name, age_group, zip_code_3_digits, gender, race, ethnicity, length_of_stay,
    type_of_admission, patient_disposition, discharge_year, ccsr_diagnosis_code, ccsr_diagnosis_description,
    ccsr_procedure_code, ccsr_procedure_description, apr_drg_code, apr_drg_description,
    apr_mdc_code, apr_mdc_description, apr_severity_of_illness_code, apr_severity_of_illness_description,
    apr_risk_of_mortality, apr_medical_surgical_description, payment_typology_1,
    payment_typology_2, payment_typology_3, birth_weight, emergency_department_indicator,
    total_charges, total_costs
);

-- Part 5
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sparcs_chunk_5.csv'
INTO TABLE sparcs_data
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    hospital_service_area, hospital_county, operating_certificate_number, permanent_facility_id,
    facility_name, age_group, zip_code_3_digits, gender, race, ethnicity, length_of_stay,
    type_of_admission, patient_disposition, discharge_year, ccsr_diagnosis_code, ccsr_diagnosis_description,
    ccsr_procedure_code, ccsr_procedure_description, apr_drg_code, apr_drg_description,
    apr_mdc_code, apr_mdc_description, apr_severity_of_illness_code, apr_severity_of_illness_description,
    apr_risk_of_mortality, apr_medical_surgical_description, payment_typology_1,
    payment_typology_2, payment_typology_3, birth_weight, emergency_department_indicator,
    total_charges, total_costs
);

-- ✅ Optional: Check total rows loaded
SELECT COUNT(*) AS total_loaded_rows FROM sparcs_data;

SELECT gender, COUNT(*) 
FROM sparcs_data 
GROUP BY gender;
