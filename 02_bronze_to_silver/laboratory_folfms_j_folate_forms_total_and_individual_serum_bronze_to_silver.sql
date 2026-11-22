CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.folate_forms_total_and_individual_serum AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    WTFOL2YR AS Folate_And_Folate_Forms_Weight,
    LBDFOTSI AS Serum_Total_Folate_nmol_L,
    LBDFOT AS Serum_Total_Folate_ng_mL,
    LBXSF1SI AS 5_Methyl_Tetrahydrofolate_nmol_L,
    CASE
        WHEN LBDSF1LC = 0 THEN "At or above detection limit"
        WHEN LBDSF1LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 5_Methyl_Tetrahydrofolate_Comment_Code,
    LBXSF2SI AS Folic_Acid_nmol_L,
    CASE
        WHEN LBDSF2LC = 0 THEN "At or above detection limit"
        WHEN LBDSF2LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Folic_Acid_Comment_Code,
    LBXSF3SI AS 5_Formyl_Tetrahydrofolate_nmol_L,
    CASE
        WHEN LBDSF3LC = 0 THEN "At or above detection limit"
        WHEN LBDSF3LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 5_Formyl_Tetrahydrofolate_Comment_Code,
    LBXSF4SI AS Tetrahydrofolate_nmol_L,
    CASE 
        WHEN LBDSF4LC = 0 THEN "At or above detection limit"
        WHEN LBDSF4LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Tetrahydrofolate_Comment_Code,
    LBXSF5SI AS 5_10_Methenyl_Tetrahydrofolate_nmol_L,
    CASE 
        WHEN LBDSF5LC = 0 THEN "At or above detection limit"
        WHEN LBDSF5LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS 5_10_Methenyl_Tetrahydrofolate_Comment_Code,
    LBXSF6SI AS Mefox_Oxidation_Product_nmol_L,
    CASE
        WHEN LBDSF6LC = 0 THEN "At or above detection limit"
        WHEN LBDSF6LC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Mefox_Oxidation_Product_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.folfms_j
;