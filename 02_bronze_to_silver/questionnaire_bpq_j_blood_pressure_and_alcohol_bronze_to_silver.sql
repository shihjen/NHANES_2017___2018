CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.blood_pressure_and_cholesterol AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN BPQ020 = 1 THEN "Yes"
        WHEN BPQ020 = 2 THEN "No"
        WHEN BPQ020 = 7 THEN "Refused"
        WHEN BPQ020 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Told_You_Had_High_Blood_Pressure,
    CASE  
        WHEN BPQ030 = 1 THEN "Yes"
        WHEN BPQ030 = 2 THEN "No"
        WHEN BPQ030 = 7 THEN "Refused"
        WHEN BPQ030 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Told_Had_High_Blood_Pressure_2_Or_More_Times,
    CASE
        WHEN BPD035 BETWEEN 13 AND 79 THEN CAST(BPD035 AS STRING)
        WHEN BPD035 = 12 THEN "	12 years or younger"
        WHEN BPD035 = 80 THEN "80 years or older"
        WHEN BPD035 = 777 THEN "Refused"
        WHEN BPD035 = 999 THEN "Don't know"
        ELSE "Missing"
    END AS Age_Told_Had_Hypertension,
    CASE
        WHEN BPQ040A = 1 THEN "Yes"
        WHEN BPQ040A = 2 THEN "No"
        WHEN BPQ040A = 7 THEN "Refused"
        WHEN BPQ040A = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Taking_Prescription_For_Hypertension,
    CASE
        WHEN BPQ050A = 1 THEN "Yes"
        WHEN BPQ050A = 2 THEN "No"
        WHEN BPQ050A = 7 THEN "Refused"
        WHEN BPQ050A = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Now_Taking_Prescribed_Medicine_For_HBP,
    CASE
        WHEN BPQ080 = 1 THEN "Yes"
        WHEN BPQ080 = 2 THEN "No"
        WHEN BPQ080 = 7 THEN "Refused"
        WHEN BPQ080 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Doctor_Told_You_High_Cholesterol_Level,
    CASE
        WHEN BPQ060 = 1 THEN "Yes"
        WHEN BPQ060 = 2 THEN "No"
        WHEN BPQ060 = 7 THEN "Refused"
        WHEN BPQ060 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Had_Blood_Cholesterol_Checked,
    CASE
        WHEN BPQ070 = 1 THEN "Less than 1 year ago"
        WHEN BPQ070 = 2 THEN "1 year but less than 2 years ago"
        WHEN BPQ070 = 3 THEN "2 years but less than 5 years ago"
        WHEN BPQ070 = 4 THEN "5 years or more"
        WHEN BPQ070 = 7 THEN "Refused"
        WHEN BPQ070 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS When_Blood_Cholesterol_Last_Checked,
    CASE
        WHEN BPQ090D = 1 THEN "Yes"
        WHEN BPQ090D = 2 THEN "No"
        WHEN BPQ090D = 7 THEN "Refused"
        WHEN BPQ090D = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Told_To_Take_Prescriptn_For_Cholesterol,
    CASE
        WHEN BPQ100D = 1 THEN "Yes"
        WHEN BPQ100D = 2 THEN "No"
        WHEN BPQ100D = 7 THEN "Refused"
        WHEN BPQ100D = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Now_Taking_Prescribed_Medicine
FROM nhanes_2017___2018.nhanes_bronze.bpq_j
;