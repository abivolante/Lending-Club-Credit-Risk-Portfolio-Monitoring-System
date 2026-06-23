-- =====================================================
-- PHASE 4: DELINQUENCY & EXPOSURE AT DEFAULT (EAD)
-- =====================================================
--
-- Objective:
-- Identify early warning indicators of future credit losses
-- by analysing delinquent accounts and their associated
-- exposure at default (EAD).
--
-- Delinquent loans are defined as:
-- - Late (16-30 days)
-- - Late (31-120 days)
--
-- EAD Formula:
-- EAD = Outstanding Balance
--     = loan_amnt - total_pymnt
--
-- =====================================================


-- Number of delinquent loans
SELECT
    COUNT(*) AS delinquent_loans
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status IN (
    'Late (16-30 days)',
    'Late (31-120 days)'
);


-- Total Exposure at Default (EAD)
SELECT
    ROUND(
        SUM(GREATEST(loan_amnt - total_pymnt, 0)),
        2
    ) AS total_ead
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status IN (
    'Late (16-30 days)',
    'Late (31-120 days)'
);


-- EAD distribution by credit grade
SELECT
    grade,
    ROUND(
        SUM(GREATEST(loan_amnt - total_pymnt, 0)),
        2
    ) AS ead
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status IN (
    'Late (16-30 days)',
    'Late (31-120 days)'
)
GROUP BY grade
ORDER BY ead DESC;


-- EAD distribution by loan purpose
SELECT
    purpose,
    ROUND(
        SUM(GREATEST(loan_amnt - total_pymnt, 0)),
        2
    ) AS ead
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status IN (
    'Late (16-30 days)',
    'Late (31-120 days)'
)
GROUP BY purpose
ORDER BY ead DESC;


-- EAD distribution by loan term
SELECT
    term,
    ROUND(
        SUM(GREATEST(loan_amnt - total_pymnt, 0)),
        2
    ) AS ead
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status IN (
    'Late (16-30 days)',
    'Late (31-120 days)'
)
GROUP BY term
ORDER BY ead DESC;
