CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.current_health_status AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN HSD010 = 1 THEN "Excellent"
        WHEN HSD010 = 2 THEN "Very good"
        WHEN HSD010 = 3 THEN "Good"
        WHEN HSD010 = 4 THEN "Fair"
        WHEN HSD010 = 5 THEN "Poor"
        WHEN HSD010 = 7 THEN "Refused"
        WHEN HSD010 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS General_Health_Condition,
    CASE
        WHEN HSQ500 = 1 THEN "Yes"
        WHEN HSQ500 = 2 THEN "No"
        WHEN HSQ500 = 7 THEN "Refused"
        WHEN HSQ500 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS SP_Have_Head_Cold_Or_Chest_Cold,
    CASE
        WHEN HSQ510 = 1 THEN "Yes"
        WHEN HSQ510 = 2 THEN "No"
        WHEN HSQ510 = 7 THEN "Refused"
        WHEN HSQ510 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS SP_Have_Stomach_Or_Intestinal_Illness,
    CASE
        WHEN HSQ520 = 1 THEN "Yes"
        WHEN HSQ520 = 2 THEN "No"
        WHEN HSQ520 = 7 THEN "Refused"
        WHEN HSQ520 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS SP_Have_Flu_Pneumonia_Ear_Infection,
    CASE
        WHEN HSQ571 = 1 THEN "Yes"
        WHEN HSQ571 = 2 THEN "No"
        WHEN HSQ571 = 7 THEN "Refused"
        WHEN HSQ571 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS SP_Donated_Blood_In_Past_12_Months,
    CASE
        WHEN HSQ580 = 1 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 2 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 3 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 4 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 5 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 6 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 7 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 8 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 9 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 10 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 11 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 12 THEN CAST(HSQ580 AS STRING)
        WHEN HSQ580 = 77 THEN "Refused"
        WHEN HSQ580 = 99 THEN "Don't know"
        ELSE "Missing"
    END AS How_Long_Ago_Was_Last_Blood_Donation,
    CASE
        WHEN HSQ590 = 1 THEN "Yes"
        WHEN HSQ590 = 2 THEN "No"
        WHEN HSQ590 = 7 THEN "Refused"
        WHEN HSQ590 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Blood_Ever_Tested_For_HIV_Virus,
    CASE
        WHEN HSAQUEX = 1 THEN "Dietary Recall Component -- B(1-11)"
        WHEN HSAQUEX = 2 THEN "MEC CAPI Questionnaire -- B(12-150)"
        ELSE "Missing"
    END AS Source_Of_Health_Status_Data
FROM nhanes_2017___2018.nhanes_bronze.hsq_j
;