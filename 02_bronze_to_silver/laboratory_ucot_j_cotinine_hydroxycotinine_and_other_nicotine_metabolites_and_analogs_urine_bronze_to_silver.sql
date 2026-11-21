CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.cotinine_hydroxycotinine_and_other_nicotine_metabolites_and_analogs_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weight,
    URXCOTT AS Cotinine_Urine_ng_mL,
    CASE 
        WHEN URDCOTLC = 0 THEN "At or above detection limit"
        WHEN URDCOTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Cotinine_Urine_Comment_Code,
    URXHCTT AS Hydroxycotinine_Urine_ng_mL,
    CASE 
        WHEN URDHCTLC = 0 THEN "At or above detection limit"
        WHEN URDHCTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Hydroxycotinine_Urine_Comment_Code,
    URXANBT AS Anabasine_Urine_ng_mL,
    CASE
        WHEN URDANBLC = 0 THEN "At or above detection limit"
        WHEN URDANBLC = 1 THEN "Below lower detection limit"
        WHEN URDANBLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS Anabasine_Urine_Comment_Code,
    URXANTT AS Anatabine_Urine_ng_mL,
    CASE
        WHEN URDANTLC = 0 THEN "At or above detection limit"
        WHEN URDANTLC = 1 THEN "Below lower detection limit"
        WHEN URDANTLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS Anatabine_Urine_Comment_Code,
    URXCOXT AS Cotinine_N_Oxide_Urine_ng_mL,
    CASE 
        WHEN URDCOXLC = 0 THEN "At or above detection limit"
        WHEN URDCOXLC = 1 THEN "Below lower detection limit"
        WHEN URDCOXLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS Cotinine_N_Oxide_Urine_Comment_Code,
    URXHPBT AS 4_Hydroxy_4_3_Pyridyl_C4H802_ng_mL,
    CASE 
        WHEN URDHPBLC = 0 THEN "At or above detection limit"
        WHEN URDHPBLC = 1 THEN "Below lower detection limit"
        WHEN URDHPBLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS 4_Hydroxy_4_3_Pyridyl_C4H802_Comment_Code,
    URXNICT AS Nicotine_Urine_ng_mL,
    CASE 
        WHEN URDNICLC = 0 THEN "At or above detection limit"
        WHEN URDNICLC = 1 THEN "Below lower detection limit"
        WHEN URDNICLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS Nicotine_Urine_Comment_Code,
    URXNNCT AS Nornicotine_Urine_ng_mL,
    CASE
        WHEN URDNCTLC = 0 THEN "At or above detection limit"
        WHEN URDNCTLC = 1 THEN "Below lower detection limit"
        WHEN URDNCTLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS Nornicotine_Urine_Comment_Code,
    URXNOXT AS Nicotine_1_Oxide_Urine_ng_mL,
    CASE
        WHEN URDNOXLC = 0 THEN "At or above detection limit"
        WHEN URDNOXLC = 1 THEN "Below lower detection limit"
        WHEN URDNOXLC = 2 THEN "Result not obtained, cotinine (URXCOTT) result below 20 ng/mL"
        ELSE "Missing"
    END AS Nicotine_1_Oxide_Urine_Comment_Code,
    URDTNE2 AS TNE_2_nmol_mL,
    URDTNE3 AS TNE_3_nmol_mL,
    URDTNE6 AS TNE_6_nmol_mL,
    URDTNE7 AS TNE_7_nmol_mL
FROM nhanes_2017___2018.nhanes_bronze.ucot_j
;