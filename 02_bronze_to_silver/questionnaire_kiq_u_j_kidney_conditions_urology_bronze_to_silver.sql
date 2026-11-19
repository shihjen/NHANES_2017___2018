CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.kidney_condition_urology AS
SELECT DISTINCT 
    SEQN AS Respondent_ID,
    CASE 
        WHEN KIQ022 = 1 THEN "Yes"
        WHEN KIQ022 = 2 THEN "No"
        WHEN KIQ022 = 7 THEN "Refused"
        WHEN KIQ022 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Ever_Told_You_Had_Weak_Failing_Kidneys,
    CASE
        WHEN KIQ025 = 1 THEN "Yes"
        WHEN KIQ025 = 2 THEN "No"
        WHEN KIQ025 = 7 THEN "Refused"
        WHEN KIQ025 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Received_Dialysis_In_Past_12_Months,
    CASE 
        WHEN KIQ026 = 1 THEN "Yes"
        WHEN KIQ026 = 2 THEN "No"
        WHEN KIQ026 = 7 THEN "Refused"
        WHEN KIQ026 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Ever_Had_Kidney_Stones,
    CASE
        WHEN KIQ029 = 1 THEN "Yes"
        WHEN KIQ029 = 2 THEN "No"
        WHEN KIQ029 = 7 THEN "Refused"
        WHEN KIQ029 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Pass_Kidney_Stone_In_Past_12_Months,
    CASE
        WHEN KIQ005 = 1 THEN "Never"
        WHEN KIQ005 = 2 THEN "Less than once a month"
        WHEN KIQ005 = 3 THEN "A few times a month"
        WHEN KIQ005 = 4 THEN "A few times a week"
        WHEN KIQ005 = 5 THEN "Every day and/or night"
        WHEN KIQ005 = 7 THEN "Refused"
        WHEN KIQ005 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Often_Have_Urinary_Leakage,
    CASE
        WHEN KIQ010 = 1 THEN "Drops"
        WHEN KIQ010 = 2 THEN "Small splashes"
        WHEN KIQ010 = 3 THEN "More"
        WHEN KIQ010 = 7 THEN "Refused"
        WHEN KIQ010 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Much_Urine_Lose_Each_Time,
    CASE
        WHEN KIQ042 = 1 THEN "Yes"
        WHEN KIQ042 = 2 THEN "No"
        WHEN KIQ042 = 7 THEN "Refused"
        WHEN KIQ042 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Leak_Urine_During_Physical_Activities,
    CASE
        WHEN KIQ430 = 1 THEN "Less than once a month"
        WHEN KIQ430 = 2 THEN "A few times a month"
        WHEN KIQ430 = 3 THEN "A few times a week"
        WHEN KIQ430 = 4 THEN "Every day and/or night"
        WHEN KIQ430 = 7 THEN "Refused"
        WHEN KIQ430 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Frequently_Does_This_Occur,
    CASE
        WHEN KIQ044 = 1 THEN "Yes"
        WHEN KIQ044 = 2 THEN "No"
        WHEN KIQ044 = 7 THEN "Refused"
        WHEN KIQ044 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Urinated_Before_Reaching_The_Toilet,
    CASE
        WHEN KIQ450 = 1 THEN "Less than once a month"
        WHEN KIQ450 = 2 THEN "A few times a month"
        WHEN KIQ450 = 3 THEN "A few times a week"
        WHEN KIQ450 = 4 THEN "Every day and/or night"
        WHEN KIQ450 = 7 THEN "Refused"
        WHEN KIQ450 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Frequently_Does_This_Occur_Urinated_Before_Reaching_The_Toilet,
    CASE
        WHEN KIQ046 = 1 THEN "Yes"
        WHEN KIQ046 = 2 THEN "No"
        WHEN KIQ046 = 7 THEN "Refused"
        WHEN KIQ046 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS Leak_Urine_During_Nonphysical_Activities,
    CASE
        WHEN KIQ470 = 1 THEN "Less than once a month"
        WHEN KIQ470 = 2 THEN "A few times a month"
        WHEN KIQ470 = 3 THEN "A few times a week"
        WHEN KIQ470 = 4 THEN "Every day and/or night"
        WHEN KIQ470 = 7 THEN "Refused"
        WHEN KIQ470 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Frequently_Does_This_Occur_Leak_Urine_During_Nonphysical_Activities,
    CASE
        WHEN KIQ050 = 1 THEN "Not at all"
        WHEN KIQ050 = 2 THEN "Only a little"
        WHEN KIQ050 = 3 THEN "Somewhat"
        WHEN KIQ050 = 4 THEN "Very much"
        WHEN KIQ050 = 5 THEN "Greatly"
        WHEN KIQ050 = 7 THEN "Refused"
        WHEN KIQ050 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Much_Did_Urine_Leakage_Bother_You,
    CASE
        WHEN KIQ052 = 1 THEN "Not at all"
        WHEN KIQ052 = 2 THEN "Only a little"
        WHEN KIQ052 = 3 THEN "Somewhat"
        WHEN KIQ052 = 4 THEN "Very much"
        WHEN KIQ052 = 5 THEN "Greatly"
        WHEN KIQ052 = 7 THEN "Refused"
        WHEN KIQ052 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Much_Were_Daily_Activities_Affected,
    CASE
        WHEN KIQ480 BETWEEN 0 AND 4 THEN CAST(KIQ480 AS STRING)
        WHEN KIQ480 = 5 THEN "5 or more"
        WHEN KIQ480 = 7 THEN "Refused"
        WHEN KIQ480 = 9 THEN "Don't know"
        ELSE "Missing" 
    END AS How_Many_Times_Urinate_In_Night
FROM nhanes_2017___2018.nhanes_bronze.kiq_u_j
;