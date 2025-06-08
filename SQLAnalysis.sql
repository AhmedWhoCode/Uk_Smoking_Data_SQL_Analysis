            --1. Overall Smoking Prevalence:--
-- What is the total number of individuals in the dataset, and what percentage of them are smokers versus non-smokers?

WITH SmokingCounts AS (
select  smoke, COUNT(*) AS NumberOfIndividuals,
       sum(case When smoke = 'Yes' Then 1 Else 0 end) as SmokersSum,
       sum(case When  smoke = 'No' Then 1 Else 0 end) as NonSmokersSum
   from smoking
   )
select NumberOfIndividuals as Number_of_Individuals,Round(CAST(SmokersSum AS Real)/NumberOfIndividuals*100) as Percent_of_Smokers
,Round(CAST(NonSmokersSum AS Real)/NumberOfIndividuals*100) as Percent_Of_Non_Smokers
   from
    SmokingCounts
    
    
                   --Demographic Analysis of Smoking Habits:--
--How does smoking prevalence vary across different genders, 
--age groups , and regions?
        
WITH GenderSmokerCounts AS (
    select  gender as Gender,count(*) as  Count ,
    sum(case When gender = 'Male' Then 1 Else 0 end) as Male,
    sum(case When  gender = 'Female' Then 1 Else 0 end) as Female,
    sum(case When  age > 14 and age <25  Then 1 Else 0 end) as Age_14_to_25,
    sum(case When  age > 25 and age <40  Then 1 Else 0 end) as Age_25_to_40,
    sum(case When  age > 40 and age <60  Then 1 Else 0 end) as Age_40_to_60,
    sum(case When  age > 59   Then 1 Else 0 end) as Age_above_to_59
    from smoking 
        where smoke == 'Yes'
   ) 
   select Age_14_to_25,Age_25_to_40,Age_40_to_60,Age_above_to_59,Round(CAST(Male AS Real)/Count*100) as Percent_of_Male,
        Round(CAST(Female AS Real)/Count*100) as Percent_Of_Female
from GenderSmokerCounts;



--Identify the top 3 regions with the highest smoking rates, total smokers = 421
select region,Round(CAST(count(*) AS Real)/421,2)*100 
as smokers_count 
from smoking where smoke == 'Yes' 
group by region 
order by smokers_count desc 


             --Socio-Economic Factors and Smoking:
--Is there a relationship between an individual's highest qualification and their smoking status? 
--Which qualification level has the highest proportion of smokers, and which has the lowest?



WITH SmokingAnalysisWithQual AS (
select  highest_qualification,
count(*) as Total_individuals,
sum(case When smoke = 'Yes' Then 1 Else 0 end) as Smokers_Sum
  from smoking 
  GROUP  by highest_qualification
   )
SELECT *, Round(CAST(Smokers_Sum AS Real)/Total_individuals,5)*100 
as percent_of_smoker from SmokingAnalysisWithQual order by percent_of_smoker desc


 --Analyze the distribution of smokers and non-smokers across different gross income brackets. 
 --Does higher income correlate with a lower or higher smoking rate?

SELECT
    gross_income AS income_group,
    COUNT(*) AS total_count,
    SUM(CASE WHEN smoke = 'Yes' THEN 1 ELSE 0 END) AS smoker_count,
    ROUND(
        100.0 * SUM(CASE WHEN smoke = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS smoker_percentage
FROM smoking
GROUP BY gross_income
ORDER BY 
smoker_percentage desc

   
   
   


                  --4. Marital Status and Ethnicity Impact:
 --Examine how smoking status differs based on marital status and ethnicity. 
--Are there any particular marital statuses or ethnic groups that show significantly higher or lower smoking rates?

WITH SmokingAnalysisWithMaritalStatus AS (
select  marital_status,
count(*) as Total_individuals,
sum(case When smoke = 'Yes' Then 1 Else 0 end) as Smokers_Sum
  from smoking 
  GROUP  by marital_status
   )
SELECT *, Round(CAST(Smokers_Sum AS Real)/Total_individuals,5)*100 
as percent_of_smoker from SmokingAnalysisWithMaritalStatus order by percent_of_smoker desc


--analysis on ethnicities making sure we have enough data and removing redundent data.
WITH SmokingAnalysisWithEthnicities AS (
select  ethnicity,
count(*) as Total_individuals,
sum(case When smoke = 'Yes' Then 1 Else 0 end) as Smokers_Sum
  from smoking 
    where ethnicity != 'Refused'
  GROUP  by ethnicity
   ) 
SELECT *,
Round(CAST(Smokers_Sum AS Real)/Total_individuals,5)*100 
as percent_of_smoker 
from SmokingAnalysisWithEthnicities
where Total_individuals >5 
order by percent_of_smoker desc
