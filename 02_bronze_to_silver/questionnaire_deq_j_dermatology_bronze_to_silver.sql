CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.dermatology  AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN DED031 = 1 THEN "Get a severe sunburn with blisters"
        WHEN DED031 = 2 THEN "A severe sunburn for a few days with peeling"
        WHEN DED031 = 3 THEN "Mildly burned with some tanningood"
        WHEN DED031 = 4 THEN "Turning darker without a sunburn"
        WHEN DED031 = 5 THEN "Nothing would happen in half an hour"
        WHEN DED031 = 6 THEN "Other"
        WHEN DED031 = 77 THEN "Refused"
        WHEN DED031 = 99 THEN "Don't know"
        ELSE "Missing" 
    END AS Skin_Reaction_To_Sun_After_Non_Exposure,
    CASE
        WHEN DEQ034A = 1 THEN "Always"
        WHEN DEQ034A = 2 THEN "Most of the time"
        WHEN DEQ034A = 3 THEN "Sometimes"
        WHEN DEQ034A = 4 THEN "Rarely"
        WHEN DEQ034A = 5 THEN "Never"
        WHEN DEQ034A = 6 THEN "Don't go out in the sun"
        WHEN DEQ034A = 77 THEN "Refused"
        WHEN DEQ034A = 99 THEN "Don't know"
        ELSE "Missing" 
    END AS Stay_In_The_Shade,
    CASE
        WHEN DEQ034C = 1 THEN "Always"
        WHEN DEQ034C = 2 THEN "Most of the time"
        WHEN DEQ034C = 3 THEN "Sometimes"
        WHEN DEQ034C = 4 THEN "Rarely"
        WHEN DEQ034C = 5 THEN "Never"
        WHEN DEQ034C = 77 THEN "Refused"
        WHEN DEQ034C = 99 THEN "Don't know"
        ELSE "Missing" 
    END AS Wear_A_Long_Sleeved_Shirt,
    CASE
        WHEN DEQ034D = 1 THEN "Always"
        WHEN DEQ034D = 2 THEN "Most of the time"
        WHEN DEQ034D = 3 THEN "Sometimes"
        WHEN DEQ034D = 4 THEN "Rarely"
        WHEN DEQ034D = 5 THEN "Never"
        WHEN DEQ034D = 77 THEN "Refused"
        WHEN DEQ034D = 99 THEN "Don't know"
        ELSE "Missing"
    END AS Use_Sunscreen,
    CASE
        WHEN DEQ038G = 1 THEN "Enter number"
        WHEN DEQ038G = 2 THEN "Never"
        WHEN DEQ038G = 7 THEN "Refused"
        WHEN DEQ038G = 9 THEN "Don't know"
        ELSE "Missing"
    END AS In_Past_Yr_Did_You_Have_Sunburn,
    CASE
        WHEN DEQ038Q BETWEEN 1 AND 15 THEN CAST(DEQ038Q AS STRING)
        WHEN DEQ038Q = 20 THEN "20 or more times"
        WHEN DEQ038Q = 77777 THEN "Refused"
        WHEN DEQ038Q = 99999 THEN "Don't know"
        ELSE "Missing"
    END AS No__Of_Times_In_Past_Yr_You_Had_A_Sunburn,
    CASE
        WHEN DED120 BETWEEN 15 AND 480 THEN CAST(DED120 AS STRING)
        WHEN DED120 = 0 THEN "No time spent outdoors"
        WHEN DED120 = 14 THEN "1-14 minutes"
        WHEN DED120 = 3333 THEN "Does not work or go to school"
        WHEN DED120 = 7777 THEN "Refused"
        WHEN DED120 = 9999 THEN "Don't know"
        ELSE "Missing"
    END AS Minutes_Outdoors_9am_To_5pm_Work_Day,
    CASE 
        WHEN DED125 BETWEEN 15 AND 480 THEN CAST(DED120 AS STRING)
        WHEN DED125 = 0 THEN "No time spent outdoors"
        WHEN DED125 = 14 THEN "1-14 minutes"
        WHEN DED125 = 3333 THEN "Does not work or go to school"
        WHEN DED125 = 7777 THEN "Refused"
        WHEN DED125 = 9999 THEN "Don't know"
        ELSE "Missing"
    END AS Minutes_Outdoors_9am_To_5pm_Not_Work_Day
FROM nhanes_2017___2018.nhanes_bronze.deq_j
;