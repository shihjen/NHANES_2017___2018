CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.cardiovascular_health AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN CDQ001 = 1 THEN "Yes"
        WHEN CDQ001 = 2 THEN "No"
        WHEN CDQ001 = 7 THEN "Refused"
        WHEN CDQ001 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS SP_Ever_Had_Pain_Or_Discomfort_In_Chest,
    CASE
        WHEN CDQ002 = 1 THEN "Yes"
        WHEN CDQ002 = 2 THEN "No"
        WHEN CDQ002 = 3 THEN "Never walks uphill or hurries"
        WHEN CDQ002 = 7 THEN "Refused"
        WHEN CDQ002 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS SP_Get_It_Walking_Uphill_Or_In_A_Hurry,
    CASE
        WHEN CDQ003 = 1 THEN "Yes"
        WHEN CDQ003 = 2 THEN "No"
        WHEN CDQ003 = 7 THEN "Refused"
        WHEN CDQ003 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS During_An_Ordinary_Pace_On_Level_Ground,
    CASE
        WHEN CDQ004 = 1 THEN "Stop or slow down"
        WHEN CDQ004 = 2 THEN "Continue at the same pace"
        WHEN CDQ004 = 7 THEN "Refused"
        WHEN CDQ004 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS If_So_Does_SP_Continue_Or_Slow_Down,
    CASE
        WHEN CDQ005 = 1 THEN "Relieved"
        WHEN CDQ005 = 2 THEN "Not Relieved"
        WHEN CDQ005 = 7 THEN "Refused"
        WHEN CDQ005 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Does_Standing_Relieve_Pain_Discomfort,
    CASE
        WHEN CDQ006 = 1 THEN "10 minutes or less"
        WHEN CDQ006 = 2 THEN "More than 10 minutes"
        WHEN CDQ006 = 7 THEN "Refused"
        WHEN CDQ006 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS How_Soon_Is_The_Pain_Relieved,
    CASE
        WHEN CDQ009A = 1 THEN "Pain in right arm"
        WHEN CDQ009A = 77 THEN "Refused"
        WHEN CDQ009A = 99 THEN "Don't know"
        ELSE "Missing"
    END AS Pain_In_Right_Arm,
    CASE
        WHEN CDQ009B = 2 THEN "Pain in right chest"
        ELSE "Missing"
    END AS Pain_In_Right_Chest,
    CASE
        WHEN CDQ009C = 3 THEN "Pain in neck"
        ELSE "Missing"
    END AS Pain_In_Neck,
    CASE
        WHEN CDQ009D = 4 THEN "Pain in upper sternum"
        ELSE "Missing"
    END AS Pain_In_Upper_Sternum,
    CASE
        WHEN CDQ009E = 5 THEN "Pain in lower sternum"
        ELSE "Missing"
    END AS Pain_In_Lower_Sternum,
    CASE
        WHEN CDQ009F = 6 THEN "Pain in left chest"
        ELSE "Missing"
    END AS Pain_In_Left_Chest,
    CASE
        WHEN CDQ009G = 7 THEN "Pain in left arm"
        ELSE "Missing"
    END AS Pain_In_Left_Arm,
    CASE
        WHEN CDQ009H = 8 THEN "	Pain in epigastric area"
        ELSE "Missing"
    END AS Pain_In_Epigastric_Area,
    CASE
        WHEN CDQ008 = 1 THEN "Yes"
        WHEN CDQ008 = 2 THEN "No"
        WHEN CDQ008 = 7 THEN "Refused"
        WHEN CDQ008 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Severe_Pain_In_Chest_More_Than_Half_Hour,
    CASE
        WHEN CDQ010 = 1 THEN "Yes"
        WHEN CDQ010 = 2 THEN "No"
        WHEN CDQ010 = 7 THEN "Refused"
        WHEN CDQ010 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Shortness_Of_Breath_On_Stairs_Inclines
FROM nhanes_2017___2018.nhanes_bronze.cdq_j
;