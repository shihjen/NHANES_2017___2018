CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.personal_care_and_consumer_product_chemicals_and_metabolites AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSB2YR AS Subsample_B_weights,
    URXBP3 AS Urinary_Benzophenone_3_ng_mL,
    CASE 
        WHEN URDBP3LC = 0 THEN "At or above detection limit"
        WHEN URDBP3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Benzophenone_3_Comment_Code,
    URXBPH AS Urinary_Bisphenol_A_ng_mL,
    CASE 
        WHEN URDBPHLC = 0 THEN "At or above detection limit"
        WHEN URDBPHLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Bisphenol_A_Comment_Code,
    URXBPF AS Urinary_Bisphenol_F_ng_mL,
    CASE 
        WHEN URDBPFLC = 0 THEN "At or above detection limit"
        WHEN URDBPFLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Bisphenol_F_Comment_Code,
    URXBPS AS Urinary_Bisphenol_S_ng_mL,
    CASE
        WHEN URDBPSLC = 0 THEN "At or above detection limit"
        WHEN URDBPSLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Bisphenol_S_Comment_Code,
    URXTLC AS Urinary_Triclocarban_ng_mL,
    CASE 
        WHEN URDTLCLC = 0 THEN "At or above detection limit"
        WHEN URDTLCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Triclocarban_Comment_Code,
    URXTRS AS Urinary_Triclosan_ng_mL,
    CASE 
        WHEN URDTRSLC = 0 THEN "At or above detection limit"
        WHEN URDTRSLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Triclosan_Comment_Code,
    URXBUP AS Butyl_Paraben_ng_mL,
    CASE
        WHEN URDBUPLC = 0 THEN "At or above detection limit"
        WHEN URDBUPLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Butyl_Paraben_Comment_Code,
    URXEPB AS Ethyl_Paraben_ng_mL,
    CASE 
        WHEN URDEPBLC = 0 THEN "At or above detection limit"
        WHEN URDEPBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Ethyl_Paraben_Comment_Code,
    URXMPB AS Methyl_Paraben_ng_mL,
    CASE 
        WHEN URDMPBLC = 0 THEN "At or above detection limit"
        WHEN URDMPBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Methyl_Paraben_Comment_Code,
    URXPPB AS Propyl_Paraben_ng_mL,
    CASE 
        WHEN URDPPBLC = 0 THEN "At or above detection limit"
        WHEN URDPPBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Propyl_Paraben_Comment_Code,
    URX14D AS 2_5_Dichlorophenol_ng_mL,
    CASE 
        WHEN URD14DLC = 0 THEN "At or above detection limit"
        WHEN URD14DLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_5_Dichlorophenol_Comment_Code,
    URXDCB AS 2_4_Dichlorophenol_ng_mL,
    CASE 
        WHEN URDDCBLC = 0 THEN "At or above detection limit"
        WHEN URDDCBLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_4_Dichlorophenol_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.ephpp_j
;