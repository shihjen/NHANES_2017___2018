CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.disability AS
SELECT DISTINCT 
    SEQN AS Respondent_ID,
    CASE 
        WHEN DLQ010 = 1 THEN "Yes"
        WHEN DLQ010 = 2 THEN "No"
        WHEN DLQ010 = 7 THEN "Refused"
        WHEN DLQ010 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Have_Serious_Difficulty_Hearing,
    CASE
        WHEN DLQ020 = 1 THEN "Yes"
        WHEN DLQ020 = 2 THEN "No"
        WHEN DLQ020 = 7 THEN "Refused"
        WHEN DLQ020 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Have_Serious_Difficulty_Seeing,
    CASE
        WHEN DLQ040 = 1 THEN "Yes"
        WHEN DLQ040 = 2 THEN "No"
        WHEN DLQ040 = 7 THEN "Refused"
        WHEN DLQ040 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Have_Serious_Difficulty_Concentrating,
    CASE
        WHEN DLQ050 = 1 THEN "Yes"
        WHEN DLQ050 = 2 THEN "No"
        WHEN DLQ050 = 7 THEN "Refused"
        WHEN DLQ050 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Have_Serious_Difficulty_Walking,
    CASE
        WHEN DLQ060 = 1 THEN "Yes"
        WHEN DLQ060 = 2 THEN "No"
        WHEN DLQ060 = 7 THEN "Refused"
        WHEN DLQ060 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Have_Difficulty_Dressing_Or_Bathing,
    CASE
        WHEN DLQ080 = 1 THEN "Yes"
        WHEN DLQ080 = 2 THEN "No"
        WHEN DLQ080 = 7 THEN "Refused"
        WHEN DLQ080 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Have_Difficulty_Doing_Errands_Alone,
    CASE
        WHEN DLQ100 = 1 THEN "Daily"
        WHEN DLQ100 = 2 THEN "Weekly"
        WHEN DLQ100 = 3 THEN "Monthly"
        WHEN DLQ100 = 4 THEN "A few times a year"
        WHEN DLQ100 = 5 THEN "Never"
        WHEN DLQ100 = 7 THEN "Refused"
        WHEN DLQ100 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS How_Often_Do_You_Feel_Worried_Or_Anxious,
    CASE
        WHEN DLQ110 = 1 THEN "Yes"
        WHEN DLQ110 = 2 THEN "No"
        WHEN DLQ110 = 7 THEN "Refused"
        WHEN DLQ110 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Take_Medication_For_These_Feelings,
    CASE
        WHEN DLQ130 = 1 THEN "A little"
        WHEN DLQ130 = 2 THEN "A lot"
        WHEN DLQ130 = 3 THEN "Somewhere in between a little and a lot"
        WHEN DLQ130 = 7 THEN "Refused"
        WHEN DLQ130 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS How_Worried_Or_Anxious_Were_You,
    CASE
        WHEN DLQ140 = 1 THEN "Daily"
        WHEN DLQ140 = 2 THEN "Weekly"
        WHEN DLQ140 = 3 THEN "Monthly"
        WHEN DLQ140 = 4 THEN "A few times a year"
        WHEN DLQ140 = 5 THEN "Never"
        WHEN DLQ140 = 7 THEN "Refused"
        WHEN DLQ140 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS How_Often_Do_You_Feel_Depressed,
    CASE
        WHEN DLQ150 = 1 THEN "Yes"
        WHEN DLQ150 = 2 THEN "No"
        WHEN DLQ150 = 7 THEN "Refused"
        WHEN DLQ150 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Take_Medication_For_Depression,
    CASE
        WHEN DLQ170 = 1 THEN "A little"
        WHEN DLQ170 = 2 THEN "A lot"
        WHEN DLQ170 = 3 THEN "Somewhere in between a little and a lot"
        WHEN DLQ170 = 7 THEN "Refused"
        WHEN DLQ170 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS How_Depressed_Did_You_Feel
FROM nhanes_2017___2018.nhanes_bronze.dlq_j
;