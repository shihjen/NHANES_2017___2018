CREATE OR REPLACE TABLE nhanes_2017___2018.questionnaire_silver.alcohol_use AS
SELECT DISTINCT
    SEQN AS Respondent_ID,
    CASE
        WHEN ALQ111 = 1 THEN "Yes"
        WHEN ALQ111 = 2 THEN "No"
        WHEN ALQ111 = 7 THEN "Refused"
        WHEN ALQ111 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Had_A_Drink_Of_Any_Kind_Of_Alcohol,
    CASE
        WHEN ALQ121 = 0 THEN "Never in the last year"
        WHEN ALQ121 = 1 THEN "Every day"
        WHEN ALQ121 = 2 THEN "Nearly every day"
        WHEN ALQ121 = 3 THEN "3 to 4 times a week"
        WHEN ALQ121 = 4 THEN "2 times a week"
        WHEN ALQ121 = 5 THEN "Once a week"
        WHEN ALQ121 = 6 THEN "2 to 3 times a month"
        WHEN ALQ121 = 7 THEN "Once a month"
        WHEN ALQ121 = 8 THEN "7 to 11 times in the last year"
        WHEN ALQ121 = 9 THEN "3 to 6 times in the last year"
        WHEN ALQ121 = 10 THEN "1 to 2 times in the last year"
        WHEN ALQ121 = 77 THEN "Refused"
        WHEN ALQ121 = 99 THEN "Don't know"
        ELSE "Missing"
    END AS Past_12_Mo_How_Often_Have_Alcohol_Drink,
    CASE
        WHEN ALQ130 BETWEEN 1 AND 13 THEN CAST(ALQ130 AS STRING)
        WHEN ALQ130 = 15 THEN "15 drinks or more"
        WHEN ALQ130 = 777 THEN "Refused"
        WHEN ALQ130 = 999 THEN "Don't know"
        ELSE "Missing"
    END AS Avg_Alcoho_Drinks_Per_Day_Past_12_Mo,
    CASE 
        WHEN ALQ142 = 0 THEN "Never in the last year"
        WHEN ALQ142 = 1 THEN "Every day"
        WHEN ALQ142 = 2 THEN "Nearly every day"
        WHEN ALQ142 = 3 THEN "3 to 4 times a week"
        WHEN ALQ142 = 4 THEN "2 times a week"
        WHEN ALQ142 = 5 THEN "Once a week"
        WHEN ALQ142 = 6 THEN "2 to 3 times a month"
        WHEN ALQ142 = 7 THEN "Once a month"
        WHEN ALQ142 = 8 THEN "7 to 11 times in the last year"
        WHEN ALQ142 = 9 THEN "3 to 6 times in the last year"
        WHEN ALQ142 = 10 THEN "1 to 2 times in the last year"
        WHEN ALQ142 = 77 THEN "Refused"
        WHEN ALQ142 = 99 THEN "Don't know"
        ELSE "Missing"
    END AS No_Days_Have_4_Or_5_drinks_Ppast_12_Mo,
    CASE  
        WHEN ALQ270 = 0 THEN "Never in the last year"
        WHEN ALQ270 = 1 THEN "Every day"
        WHEN ALQ270 = 2 THEN "Nearly every day"
        WHEN ALQ270 = 3 THEN "3 to 4 times a week"
        WHEN ALQ270 = 4 THEN "2 times a week"
        WHEN ALQ270 = 5 THEN "Once a week"
        WHEN ALQ270 = 6 THEN "2 to 3 times a month"
        WHEN ALQ270 = 7 THEN "Once a month"
        WHEN ALQ270 = 8 THEN "7 to 11 times in the last year"
        WHEN ALQ270 = 9 THEN "3 to 6 times in the last year"
        WHEN ALQ270 = 10 THEN "1 to 2 times in the last year"
        WHEN ALQ270 = 77 THEN "Refused"
        WHEN ALQ270 = 99 THEN "Don't know"
        ELSE "Missing"
    END AS No_Times_4_to_5_Drinks_In_2hrs_Past_12_Mo,
    CASE 
        WHEN ALQ280 = 0 THEN "Never in the last year"
        WHEN ALQ280 = 1 THEN "Every day"
        WHEN ALQ280 = 2 THEN "Nearly every day"
        WHEN ALQ280 = 3 THEN "3 to 4 times a week"
        WHEN ALQ280 = 4 THEN "2 times a week"
        WHEN ALQ280 = 5 THEN "Once a week"
        WHEN ALQ280 = 6 THEN "2 to 3 times a month"
        WHEN ALQ280 = 7 THEN "Once a month"
        WHEN ALQ280 = 8 THEN "7 to 11 times in the last year"
        WHEN ALQ280 = 9 THEN "3 to 6 times in the last year"
        WHEN ALQ280 = 10 THEN "1 to 2 times in the last year"
        WHEN ALQ280 = 77 THEN "Refused"
        WHEN ALQ280 = 99 THEN "Don't know"
        ELSE "Missing"
    END AS No_Times_8_Or_More_Drinks_In_1day_Past_12_Mo,
    CASE 
        WHEN ALQ290 = 0 THEN "Never in the last year"
        WHEN ALQ290 = 1 THEN "Every day"
        WHEN ALQ290 = 2 THEN "Nearly every day"
        WHEN ALQ290 = 3 THEN "3 to 4 times a week"
        WHEN ALQ290 = 4 THEN "2 times a week"
        WHEN ALQ290 = 5 THEN "Once a week"
        WHEN ALQ290 = 6 THEN "2 to 3 times a month"
        WHEN ALQ290 = 7 THEN "Once a month"
        WHEN ALQ290 = 8 THEN "7 to 11 times in the last year"
        WHEN ALQ290 = 9 THEN "3 to 6 times in the last year"
        WHEN ALQ290 = 10 THEN "1 to 2 times in the last year"
        WHEN ALQ290 = 77 THEN "Refused"
        WHEN ALQ290 = 99 THEN "Don't know"
        ELSE "Missing"
    END AS No_Times_12_Or_More_Drinks_In_1day_Past_12_Mo,
    CASE
        WHEN ALQ151 = 1 THEN "Yes"
        WHEN ALQ151 = 2 THEN "No"
        WHEN ALQ151 = 7 THEN "Refused"
        WHEN ALQ151 = 9 THEN "Don't know"
        ELSE "Missing"
    END AS Ever_Have_4_Or_5_Or_More_Drinks_Every_Day,
    CASE
        WHEN ALQ170 BETWEEN 0 AND 20 THEN CAST(ALQ170 AS STRING)
        WHEN ALQ170 = 30 THEN "More than 20 times a month"
        WHEN ALQ170 = 777 THEN "Refused"
        WHEN ALQ170 = 999 THEN "Don't know"
        ELSE "Missing"
    END AS Past_30Days_No_Times_4_to_5_Drinks_On_Occasion
FROM nhanes_2017___2018.nhanes_bronze.alq_j
;