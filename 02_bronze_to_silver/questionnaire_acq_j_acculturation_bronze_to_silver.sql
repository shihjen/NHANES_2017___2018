CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.acculturation AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE 
        WHEN ACD011A = 1 THEN "English"
        WHEN ACD011A = 77 THEN "Refused"
        WHEN ACD011A = 99 THEN "Don't Know"
        ELSE "Missing"
    END AS NHW_NHB_Speak_English_At_Home,
    CASE
        WHEN ACD011B = 1 THEN "Spanish"
        ELSE "Missing"
    END AS NHW_NHB_Speak_Spanish_At_Home,
    CASE 
        WHEN ACD011C = 9 THEN "Others"
        ELSE "Missing"
    END AS NHW_NHB_Speak_Other_Language_At_Home,
    CASE
        WHEN ACD040 = 1 THEN "Only Spanish"
        WHEN ACD040 = 2 THEN "More Spanish than English"
        WHEN ACD040 = 3 THEN "Both equally"
        WHEN ACD040 = 4 THEN "More English than Spanish"
        WHEN ACD040 = 5 THEN "Only English"
        WHEN ACD040 = 7 THEN "Refused"
        WHEN ACD040 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Hispanis_Language_Spoken_At_Home,
    CASE
        WHEN ACD110 = 1 THEN "Only Non-English language"
        WHEN ACD110 = 2 THEN "More Non-English than English"
        WHEN ACD110 = 3 THEN "Both equally"
        WHEN ACD110 = 4 THEN "More English than Non-English"
        WHEN ACD110 = 5 THEN "Only English"
        WHEN ACD110 = 7 THEN "Refused"
        WHEN ACD110 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Asian_Language_Spoken_At_Home
FROM nhanes_2017___2018.nhanes_bronze.acq_j;