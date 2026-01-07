/*
Project: Investor Behavior Analysis
Dataset: Finance Trends
Author: <Your Name>
Description:
This file contains final, interview-ready SQL queries used
to analyze investor behavior, investment intensity, and
instrument-level contribution patterns.
*/

-- Base enriched view with total investment score

CREATE OR REPLACE VIEW finance_trends_enriched AS
SELECT
    *,
    (
        mutual_funds +
        equity_market +
        debentures +
        government_bonds +
        fixed_deposits +
        ppf +
        gold
    ) AS total_investment_score
FROM finance_trends_clean;

-- How many investors are there in each age group?

Select count(*)
from finance_trends_clean;

-- What is the gender-wise distribution of investors?

Select gender,count(*)
from finance_trends_clean
group by gender;

-- What is the average age of investors by gender?

select gender, avg(age) as AvgAge
from finance_trends_clean
group by gender;

-- What is the average score for each investment instrument across all investors?

select
avg(mutual_funds) as MutualFunds_Participation,
avg(equity_market) as EquityMarket_Participation,
avg(debentures) as Debentures_Participation,
avg(government_bonds) as GovernmentBonds_Participation,
avg(fixed_deposits) as FixedDeposits_Participation,
avg(ppf) as PPF_Participation,
avg(gold) as Gold_Participation,
avg(stock_marktet) as StockMarket_Participation
from finance_trends_clean;

-- For each age group, what is the average investment score for each instrument?

select
age_group,
avg(mutual_funds) as MutualFunds_Participation,
avg(equity_market) as EquityMarket_Participation,
avg(debentures) as Debentures_Participation,
avg(government_bonds) as GovernmentBonds_Participation,
avg(fixed_deposits) as FixedDeposits_Participation,
avg(ppf) as PPF_Participation,
avg(gold) as Gold_Participation,
avg(stock_marktet) as StockMarket_Participation
from finance_trends_clean
group by age_group
order by age_group desc;

-- Create a total_investment_score per investor and show the top 10 most invested investors.
SELECT
    gender,
    age,
    age_group,
    (
        mutual_funds +
        equity_market +
        debentures +
        government_bonds +
        fixed_deposits +
        ppf +
        gold +
        stock_marktet
    ) AS total_investment_score
FROM finance_trends_clean
ORDER BY total_investment_score DESC
LIMIT 10;

-- Which investment instrument has the highest total score across all investors?

SELECT
    'mutual_funds' AS instrument, SUM(mutual_funds) AS total_score
FROM finance_trends_clean
UNION ALL
SELECT
    'equity_market', SUM(equity_market)
FROM finance_trends_clean
UNION ALL
SELECT
    'debentures', SUM(debentures)
FROM finance_trends_clean
UNION ALL
SELECT
    'government_bonds', SUM(government_bonds)
FROM finance_trends_clean
UNION ALL
SELECT
    'fixed_deposits', SUM(fixed_deposits)
FROM finance_trends_clean
UNION ALL
SELECT
    'ppf', SUM(ppf)
FROM finance_trends_clean
UNION ALL
SELECT
    'gold', SUM(gold)
FROM finance_trends_clean
ORDER BY total_score DESC
LIMIT 1;


-- Compare average investment scores between investors whose factor is Risk vs Returns.

SELECT
    factor,
    AVG(mutual_funds)      AS avg_mutual_funds,
    AVG(equity_market)    AS avg_equity_market,
    AVG(debentures)       AS avg_debentures,
    AVG(government_bonds) AS avg_government_bonds,
    AVG(fixed_deposits)   AS avg_fixed_deposits,
    AVG(ppf)              AS avg_ppf,
    AVG(gold)             AS avg_gold
FROM finance_trends_clean
WHERE factor IN ('Risk', 'Returns')
GROUP BY factor;

-- Do investors with the objective Growth invest more heavily than those focused on Capital Appreciation?

SELECT
    objective,
    sum(
        mutual_funds +
        equity_market +
        debentures +
        government_bonds +
        fixed_deposits +
        ppf +
        gold
    ) AS avg_total_investment_score
FROM finance_trends_clean
WHERE objective IN ('Growth', 'Capital Appreciation')
GROUP BY objective;

-- Which age group has the highest average total investment score?

SELECT
    age_group,
    sum(
        mutual_funds +
        equity_market +
        debentures +
        government_bonds +
        fixed_deposits +
        ppf +
        gold
    ) AS avg_total_investment_score
FROM finance_trends_clean
GROUP BY age_group
order by age_group desc;

-- Compare average equity_market and stock_market scores by age group.

select
age_group,

avg(equity_market) as AvgEquityMarket,
avg(stock_marktet) as AvgStockMarket
from finance_trends_clean
group by age_group
order by age_group desc;


