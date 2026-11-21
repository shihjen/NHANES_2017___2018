CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.cotinine_and_hyroxycotinine_serum AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXCOT AS Cotinine_Serum_ng_mL,
    CASE 
        WHEN LBDCOTLC = 0 THEN "At or above detection limit"
        WHEN LBDCOTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Cotinine_Serum_Comment_Code,
    LBXHCT AS Hydroxycotinine_Serum_ng_mL,
    CASE
        WHEN LBDHCTLC = 0 THEN "At or above detection limit"
        WHEN LBDHCTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Hydroxycotinine_Serum_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.cot_j
;