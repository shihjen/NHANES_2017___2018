CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.arsenic_speciated_urine AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSA2YR AS Subsample_A_Weights,
    URXUAS3 AS Urinary_Arsenous_Acid_ug_L,
    CASE
        WHEN URDUA3LC = 0 THEN "At or above detection limit"
        WHEN URDUA3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Arsenous_Acid_Comment_Code,
    URXUAS5 AS Urinary_Arsenic_Acid_ug_L,
    CASE
        WHEN URDUA5LC = 0 THEN "At or above detection limit"
        WHEN URDUA5LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Arsenic_Acid_Comment_Code,
    URXUAB AS Urinary_Arsenobetaine_ug_L,
    CASE
        WHEN URDUABLC = 0 THEN "At or above detection limit"
        WHEN URDUABLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Arsenobetaine_Comment_Code,
    URXUAC AS Urinary_Arsenocholine_ug_L,
    CASE
        WHEN URDUACLC = 0 THEN "At or above detection limit"
        WHEN URDUACLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Arsenocholine_Comment_Code,
    URXUDMA AS Urinary_Dimethylarsinic_Acid_ug_L,
    CASE
        WHEN URDUDALC = 0 THEN "At or above detection limit"
        WHEN URDUDALC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Dimethylarsinic_Acid_Comment,
    URXUMMA AS Urinary_Monomethylarsonic_Acid_ug_L,
    CASE
        WHEN URDUMMAL = 0 THEN "At or above detection limit"
        WHEN URDUMMAL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Urinary_Monomethylarsonic_Acid_Comment
FROM nhanes_2017___2018.nhanes_bronze.uas_j
;