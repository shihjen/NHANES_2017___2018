CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.hepatitis AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN HEQ010 = 1 THEN "Yes"
        WHEN HEQ010 = 2 THEN "No"
        WHEN HEQ010 = 7 THEN "Refused"
        WHEN HEQ010 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Told_You_Have_Hepatitis_B,
    CASE 
        WHEN HEQ020 = 1 THEN "Yes"
        WHEN HEQ020 = 2 THEN "No"
        WHEN HEQ020 = 7 THEN "Refused"
        WHEN HEQ020 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Prescribed_Meds_Treat_Hepatitis_B,
    CASE
        WHEN HEQ030 = 1 THEN "Yes"
        WHEN HEQ030 = 2 THEN "No"
        WHEN HEQ030 = 7 THEN "Refused"
        WHEN HEQ030 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Told_You_Have_Hepatitis_C,
    CASE
        WHEN HEQ040 = 1 THEN "Yes"
        WHEN HEQ040 = 2 THEN "No"
        WHEN HEQ040 = 7 THEN "Refused"
        WHEN HEQ040 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Prescribed_Meds_Treat_Hepatitis_C
FROM nhanes_2017___2018.nhanes_bronze.heq_j
;