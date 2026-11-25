CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.neonicotinoids_urine_surplus AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSSBJ2Y AS Surplus_Specimen_B_17_18_2yr_Weights,
    SSOHIM AS 5_Hydroxyimidacloprid_ug_L,
    CASE
        WHEN SSOHIMLC = 0 THEN "At or above detection limit"
        WHEN SSOHIMLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 5_Hydroxyimidacloprid_Comment_Code,
    SSAND AS N_Desmethylacetamiprid_ug_L,
    CASE 
        WHEN SSANDLC = 0 THEN "At or above detection limit"
        WHEN SSANDLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS N_Desmethylacetamiprid_Comment_Code,
    SSFLUP AS Flupyradifurone_ug_L,
    CASE 
        WHEN SSFLUPLC = 0 THEN "At or above detection limit"
        WHEN SSFLUPLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Flupyradifurone_Comment_Code,
    SSSLF1 AS Sulfoxaflor_1_ug_L,
    CASE 
        WHEN SSSLF1LC = 0 THEN "At or above detection limit"
        WHEN SSSLF1LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Sulfoxaflor_1_Comment_Code,
    SSSLF2 AS Sulfoxaflor_2_ug_L,
    CASE
        WHEN SSSLF2LC = 0 THEN "At or above detection limit"
        WHEN SSSLF2LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Sulfoxaflor_2_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ssneon_j
;