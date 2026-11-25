CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.urine_flow_rate AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    URXVOL1 AS Volume_Of_Urine_Collection_No1_mL,
    URDFLOW1 AS Urine_No1_Flow_Rate_mL_min,
    URDTIME1 AS Minutes_Btw_Last_Urination_And_Urine_No1,
    URXVOL2 AS Volume_Of_Urine_Collection_No2_mL,
    URDFLOW2 AS Urine_No2_Flow_Rate_mL_min,
    URDTIME2 AS Minutes_Btw_Urine_No1_And_Urine_No2,
    URXVOL3 AS Volume_Of_Urine_Collection_No3_mL,
    URDFLOW3 AS Urine_No3_Flow_Rate_mL_min,
    URDTIME3 AS Minutes_Btw_Urine_No2_And_Urine_No3
FROM nhanes_2017___2018.nhanes_bronze.ucflow_j
;