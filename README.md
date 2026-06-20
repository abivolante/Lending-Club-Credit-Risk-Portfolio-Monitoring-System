# Lending Club Credit Risk Portfolio Monitoring System
This project develops a credit risk analysis of the Lending Club loan dataset from Kaggle. The objective is to replicate a banking portfolio monitoring system that evaluates portfolio exposure, credit performance, delinquency risk, and loss distribution.

## Objectives

- Measure overall portfolio exposure and composition.
- Evaluate historical credit performance and default risk.
- Identify key drivers of loan losses.
- Monitor delinquency and early warning indicators.
- Segment borrowers by risk characteristics.
- Translate findings into actionable credit policy recommendations.
- Build a Power BI dashboard for ongoing monitoring.

## Tools
- Google BigQuery (data storage and SQL processing)
- SQL (data transformation and analytical queries)
- Power BI (interactive dashboarding and reporting)

## Dataset

This project uses the Lending Club loan dataset from Kaggle.

Due to Google BigQuery storage and processing constraints, a sampled subset of the original dataset was used for analysis. A total of 100,000 rows were selected instead of the full dataset.

Source: https://www.kaggle.com/datasets/adarshsng/lending-club-loan-data-csv

## Phase 1: Portfolio Overview

This phase assesses the total portfolio size and capital distribution across borrower segments and loan statuses.

### Findings:
- The sample of 100,000 loan accounts represents approximately **£1.59 billion** in funded exposure.
- Approximately **83% of funded exposure is concentrated in Grades A–C**.
- **Current loans account for ~97.1% of total funded exposure**.
- Delinquent and charged-off loans represent **less than 1% of portfolio exposure**.


## Phase 2: Credit Risk Performance

This phase evaluates borrower repayment performance and assesses the effectiveness of the credit grading system in risk levels.

A loan is classified as defaulted if its status is either 'Charged Off' or 'Default'.

### Findings:
- The observed portfolio default rate is 0.019% (19 defaulted loans out of 100,000). (The extremely low observed default rate is likely influenced by sampling bias and under-representation of defaulted loans in the dataset. Result should be interpreted as an insight rather than a true estimate.)
- Credit grade is the strongest predictor of default risk, with Grade G showing the highest default rate. The low observed default rate by other higher risk grades is also likely influence by sampling bias. 
- Higher credit grades (A–C)  exhibit very low observed default rates.
- Loan purpose shows limited variation in default risk hence is not a strong predictive variable
- Home ownership has some relationship with default risk, with homeownes showing slightly higher observed default rates than renters.
