CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.vitamin_a_vitamin_e_and_carotenoids AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    LBXALC AS Alpha_Carotene_ug_dL,
    LBDALCSI AS Alpha_Carotene_umol_L,
    CASE
        WHEN LBDALCLC = 0 THEN "At or above detection limit"
        WHEN LBDALCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END  AS Alpha_Carotene_Comment_Code,
    LBXARY AS Alpha_Crypotoxanthin_ug_dL,
    LBDARYSI AS Alpha_Crypotoxanthin_umol_L,
    CASE 
        WHEN LBDARYLC = 0 THEN "At or above detection limit"
        WHEN LBDARYLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Alpha_Crypotoxanthin_Comment_Code,
    LBXBEC AS Trans_Beta_Carotene_ug_dL,
    LBDBECSI AS Trans_Beta_Carotene_umol_L,
    CASE 
        WHEN LBDBECLC = 0 THEN "At or above detection limit"
        WHEN LBDBECLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Trans_Beta_Carotene_Comment_Code,
    LBXCBC AS Cis_Beta_Carotene_ug_dL,
    LBDCBCSI AS Cis_Beta_Carotene_umol_L,
    CASE 
        WHEN LBDCBCLC = 0 THEN "At or above detection limit"
        WHEN LBDCBCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Cis_Beta_Carotene_Comment_Code,
    LBXCRY AS Beta_Cryptoxanthin_ug_dL,
    LBDCRYSI AS Beta_Cryptoxanthin_umol_L,
    CASE 
        WHEN LBDCRYLC = 0 THEN "At or above detection limit"
        WHEN LBDCRYLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Beta_Cryptoxanthin_Comment_Code,
    LBXGTC AS Gamma_Tocopherol_ug_dL,
    LBDGTCSI AS Gamma_Tocopherol_umol_L,
    CASE 
        WHEN LBDGTCLC = 0 THEN "At or above detection limit"
        WHEN LBDGTCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Gamma_Tocopherol_Comment_Code,
    LBXLUZ AS Lutein_And_Zeaxanthin_ug_dL,
    LBDLUZSI AS Lutein_And_Zeaxanthin_umol_L,
    CASE 
        WHEN LBDLUZLC = 0 THEN "At or above detection limit"
        WHEN LBDLUZLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Lutein_And_Zeaxanthin_Comment_Code,
    LBXLYC AS Trans_Lycopene_ug_dL,
    LBDLYCSI AS Trans_Lycopene_umol_L,
    CASE
        WHEN LBDLYCLC = 0 THEN "At or above detection limit"
        WHEN LBDLYCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END  AS Trans_Lycopene_Comment_Code,
    LBXRPL AS Retinyl_Palmitate_ug_dL,
    LBDRPLSI AS Retinyl_Palmitate_umol_L,
    CASE 
        WHEN LBDRPLLC = 0 THEN "At or above detection limit"
        WHEN LBDRPLLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Retinyl_Palmitate_Comment_Code,
    LBXRST AS Retinyl_Stearate_ug_dL,
    LBDRSTSI AS Retinyl_Stearate_umol_L,
    CASE 
        WHEN LBDRSTLC = 0 THEN "At or above detection limit"
        WHEN LBDRSTLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Retinyl_Stearate_Comment_Code,
    LBXLCC AS Total_Lycopene_ug_dL,
    LBDLCCSI AS Total_Lycopene_umol_L,
    CASE 
        WHEN LBDLCCLC = 0 THEN "At or above detection limit"
        WHEN LBDLCCLC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Total_Lycopene_Comment_Code,
    LBXVIA AS Retinol_ug_dL,
    LBDVIASI AS Retinol_umol_L,
    CASE 
        WHEN LBDVIALC = 0 THEN "At or above detection limit"
        WHEN LBDVIALC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Retinol_Comment_Code,
    LBXVIE AS Alpha_Tocopherol_ug_dL,
    LBDVIESI AS Alpha_Tocopherol_umol_L,
    CASE
        WHEN LBDVIELC = 0 THEN "At or above detection limit"
        WHEN LBDVIELC = 1 THEN "Below lower detection limit"
        ELSE "Missing"
    END AS Alpha_Tocopherol_Comment_Code
FROM nhanes_2017___2018.nhanes_bronze.vitaec_j
;