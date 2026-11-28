CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.polycyclic_aromatic_hydrocarbons_pah_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXP01 AS 1_Hydroxynaphthalene_ng_L,
    CASE 
        WHEN URDP01LC = 0 THEN "At or above detection limit"
        WHEN URDP01LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 1_Hydroxynaphthalene_Comment_Code,
    URXP03 AS 3_Hydroxyfluorene_ng_L,
    CASE 
        WHEN URDP03LC = 0 THEN "At or above detection limit"
        WHEN URDP03LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 3_Hydroxyfluorene_Comment_Code,
    URXP04 AS 2_Hydroxyfluorene_ng_L,
    CASE 
        WHEN URDP04LC = 0 THEN "At or above detection limit"
        WHEN URDP04LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_Hydroxyfluorene_Comment_Code,
    URXP06 AS 1_Hydroxyphenanthrene_ng_L,
    CASE 
        WHEN URDP06LC = 0 THEN "At or above detection limit"
        WHEN URDP06LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 1_Hydroxyphenanthrene_Comment_Code,
    URXP10 AS 1_Hydroxypyrene_ng_L,
    CASE 
        WHEN URDP10LC = 0 THEN "At or above detection limit"
        WHEN URDP10LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 1_Hydroxypyrene_Comment_Code,
    URXP25 AS 2_3_Hydroxyphenanthrene_ng_L,
    CASE 
        WHEN URDP25LC = 0 THEN "At or above detection limit"
        WHEN URDP25LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_3_Hydroxyphenanthrene_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.pah_j
;