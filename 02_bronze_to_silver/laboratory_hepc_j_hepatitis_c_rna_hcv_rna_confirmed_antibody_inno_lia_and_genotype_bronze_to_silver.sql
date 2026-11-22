CREATE OR REPLACE TABLE nhanes_2017___2018.laboratory_silver.hepatitis_c_rna_confirmed_antibody_and_genotype AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE 
        WHEN LBXHCR = 1 THEN "Positive"
        WHEN LBXHCR = 2 THEN "Negative"
        WHEN LBXHCR = 3 THEN "Negative Screening HCV Antibody"
        ELSE "Missing"
    END AS Hepatitis_C_RNA,
    CASE
        WHEN LBDHCI = 1 THEN "Positive"
        WHEN LBDHCI = 2 THEN "Negative"
        WHEN LBDHCI = 3 THEN "Negative Screening HCV Antibody"
        WHEN LBDHCI = 4 THEN "Positive HCV RNA"
        ELSE "Missing"
    END AS Hepatitis_C_Antibody_Confirmed,
    CASE
        WHEN LBXHCG = 1 THEN "Genotype 1a"
        WHEN LBXHCG = 2 THEN "Genotype 1b"
        WHEN LBXHCG = 3 THEN "Gen 1 other than a/b/not determined"
        WHEN LBXHCG = 4 THEN "Genotype 2"
        WHEN LBXHCG = 5 THEN "Genotype 3"
        WHEN LBXHCG = 6 THEN "Genotype 4"
        WHEN LBXHCG = 7 THEN "Genotype 5"
        WHEN LBXHCG = 8 THEN "Genotype 6"
        WHEN LBXHCG = 9 THEN "Genotype undetermined"
        ELSE "Missing"
    END AS Hepatiti_C_Genotype
FROM nhanes_2017___2018.nhanes_bronze.hepc_j
;