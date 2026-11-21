CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.cytomegalovirus_igg_and_igm_antibodies_serum AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN LBXIGG = 1 THEN "positive"
        WHEN LBXIGG = 2 THEN "negative"
        WHEN LBXIGG = 3 THEN "indeterminate"
        ELSE "Missing"
    END AS Cytomegalovirus_CMV_IgG,
    CASE 
        WHEN LBXIGM = 1 THEN "positive"
        WHEN LBXIGM = 2 THEN "negative"
        WHEN LBXIGM = 3 THEN "indeterminate"
        ELSE "Missing"
    END AS Cytomegalovirus_CMV_IgM,
    CASE
        WHEN LBXIGGA = 1 THEN "low"
        WHEN LBXIGGA = 2 THEN "high"
        WHEN LBXIGGA = 3 THEN "indeterminate"
        ELSE "Missing"
    END AS Cytomegalovirus_CMV_IgG_Avidity
FROM nhanes_2017___2018.nhanes_bronze.cmv_j
;