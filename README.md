# Lending Club Credit Risk Portfolio Monitoring System
This project develops credit risk analysis of the Lending Club loan dataset from Kaggle. The obejctive is to replicate a banking portfolio monitoring system that evaluates portfolio exposure, credit performance, delinquency risk, and loss distribution.

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

### Phase 1: Portfolio Overview

# Key Findings:
- The sample of 100,000 loan accounts has approximately £1.59 billion in funded exposure.
- Approximately 83% of funded exposure is concentrated within Grades A-C.
- Current loans account for approximately 97.1% of total funded exposure.
- Delinquent and charged-off loans represent less than 1% of portfolio exposure.
