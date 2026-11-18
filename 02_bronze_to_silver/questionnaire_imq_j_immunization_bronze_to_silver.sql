CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.immunization AS
SELECT DISTINCT 
    SEQN AS Respondent_ID,
    CASE 
        WHEN IMQ011 = 1 THEN "Yes, at least 2 doses"
        WHEN IMQ011 = 2 THEN "Less than 2 doses"
        WHEN IMQ011 = 3 THEN "No doses"
        WHEN IMQ011 = 7 THEN "Refused"
        WHEN IMQ011 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Received_Hepatitis_A_Vaccine,
    CASE 
        WHEN IMQ020 = 1 THEN "Yes, at least 3 doses"
        WHEN IMQ020 = 2 THEN "Less than 3 doses"
        WHEN IMQ020 = 3 THEN "No doses"
        WHEN IMQ020 = 7 THEN "Refused"
        WHEN IMQ020 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Received_Hepatitis_B_3_Dose_Series,
    CASE
        WHEN IMQ060 = 1 THEN "Yes"
        WHEN IMQ060 = 2 THEN "No"
        WHEN IMQ060 = 7 THEN "Refused"
        WHEN IMQ060 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Received_HPV_Vaccine_Females,
    CASE
        WHEN IMQ070 = 1 THEN "Yes"
        WHEN IMQ070 = 2 THEN "No"
        WHEN IMQ070 = 7 THEN "Refused"
        WHEN IMQ070 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Received_HPV_Vaccine_Males,
    CASE
        WHEN IMQ081A = 1 THEN "CERVARIX"
        WHEN IMQ081A = 7 THEN "Refused"
        WHEN IMQ081A = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Received_Cervarix_Females,
    CASE
        WHEN IMQ081B = 2 THEN "GARDASIL"
        ELSE "Missing" 
    END AS Received_Gardasil_Females,
    CASE
        WHEN IMQ081C = 3 THEN "GARDASIL 9"
        ELSE "Missing" 
    END AS Received_Gardasil_9_Females,
    CASE
        WHEN IMQ081D = 4 THEN "GARDASIL (not sure wich one)"
        ELSE "Missing" 
    END AS Received_Unknown_Gardasil_Females,
    CASE
        WHEN IMQ090 BETWEEN 1 AND 57 THEN CAST(IMQ090 AS STRING)
        WHEN IMQ090 = 777 THEN "Refused"
        WHEN IMQ090 = 999 THEN "Don't know"
        ELSE "Missing" 
    END AS Age_First_Dose_HPV,
    CASE
        WHEN IMQ100 = 1 THEN "1 Dose"
        WHEN IMQ100 = 2 THEN "2 Doses"
        WHEN IMQ100 = 3 THEN "3 Doses"
        WHEN IMQ100 = 7 THEN "Refused"
        WHEN IMQ100 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Received_HPV_No_Of_Doses
FROM nhanes_2017___2018.nhanes_bronze.imq_j
;