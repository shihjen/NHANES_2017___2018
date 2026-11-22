CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.flame_retardants_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSB2YR AS Environmental_B_2_Year_Weights,
    URXBCPP AS Bis_1_Chloro_2_Propyl_Phosphate,
    CASE
        WHEN URDBCPLC = 0 THEN "At or above detection limit"
        WHEN URDBCPLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Bis_1_Chloro_2_Propyl_Phosphate_Comment_Code,
    URXBCEP AS Bis_2_Chloroethyl_Phosphate,
    CASE
        WHEN URDCEPLC = 0 THEN "At or above detection limit"
        WHEN URDCEPLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Bis_2_Chloroethyl_Phosphate_Comment_Code,
    URXBDCP AS Bis_1_3_Dichloro_2_Propyl_Phosphate,
    CASE
        WHEN URDBDCLC = 0 THEN "At or above detection limit"
        WHEN URDBDCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Bis_1_3_Dichloro_2_Propyl_Phosphate_Comment_Code,
    URXDBUP AS Dibutyl_Phosphate,
    CASE
        WHEN URDDUPLC = 0 THEN "At or above detection limit"
        WHEN URDDUPLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Dibutyl_Phosphate_Comment_Code,
    URXDPHP AS Diphenyl_Phosphate,
    CASE 
        WHEN URDDPHLC = 0 THEN "At or above detection limit"
        WHEN URDDPHLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Diphenyl_Phosphate_Comment_Code,
    URXTBBA AS 2_3_4_5_Tetrabromobenzoic_Acid,
    CASE
        WHEN URDBBALC = 0 THEN "At or above detection limit"
        WHEN URDBBALC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_3_4_5_Tetrabromobenzoic_Acid_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.fr_j
;