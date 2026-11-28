CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.perfluoroalkyl_and_polyfluoroalkyl_substances AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTSB2YR AS Subsample_B_Weights,
    LBXPFDE AS Perfluorodecanoic_Acid_ng_mL,
    CASE
        WHEN LBDPFDEL = 0 THEN "At or above detection limit"
        WHEN LBDPFDEL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END  AS Perfluorodecanoic_Acid_Comment_Code,
    LBXPFHS AS Perfluorohexane_Sulfonic_Acid_ng_mL,
    CASE 
        WHEN LBDPFHSL = 0 THEN "At or above detection limit"
        WHEN LBDPFHSL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Perfluorohexane_Sulfonic_Acid_Comment_Code,
    LBXMPAH AS 2_n_Methyl_PFOSA_Acetic_Acid_ng_mL,
    CASE 
        WHEN LBDMPAHL = 0 THEN "At or above detection limit"
        WHEN LBDMPAHL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 2_n_Methyl_PFOSA_Acetic_Acid_Comment_Code,
    LBXPFNA AS Perfluorononanoic_Acid_ng_mL,
    CASE 
        WHEN LBDPFNAL = 0 THEN "At or above detection limit"
        WHEN LBDPFNAL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Perfluorononanoic_Acid_Comment_Code,
    LBXPFUA AS Perfluoroundecanoic_Acid_ng_mL,
    CASE 
        WHEN LBDPFUAL = 0 THEN "At or above detection limit"
        WHEN LBDPFUAL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Perfluoroundecanoic_Acid_Comment_Code,
    LBXNFOA AS n_Perfluorooctanoic_Acid_ng_mL,
    CASE 
        WHEN LBDNFOAL = 0 THEN "At or above detection limit"
        WHEN LBDNFOAL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS n_Perfluorooctanoic_Acid_Comment_Code,
    LBXBFOA AS Br_Perfluorooctanoic_Acid_Iso_ng_mL,
    CASE 
        WHEN LBDBFOAL = 0 THEN "At or above detection limit"
        WHEN LBDBFOAL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Br_Perfluorooctanoic_Acid_Iso_Comment_Code,
    LBXNFOS AS n_Perfluorooctane_Sulfonic_Acid_ng_mL,
    CASE
        WHEN LBDNFOSL = 0 THEN "At or above detection limit"
        WHEN LBDNFOSL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS n_Perfluorooctane_Sulfonic_Acid_Comment_Code,
    LBXMFOS AS Sm_PFOS_ng_mL,
    CASE 
        WHEN LBDMFOSL = 0 THEN "At or above detection limit"
        WHEN LBDMFOSL = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Sm_PFOS_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.pfas_j
;