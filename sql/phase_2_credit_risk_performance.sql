-- =====================================================
-- PHASE 2: CREDIT RISK PERFORMANCE
-- =====================================================
--
-- Objective:
-- Evaluate borrower repayment peformance and validate the effectiveness of the credit grading system
-- 
-- =====================================================

--Portfolio-wide default rate
WITH total_loans AS (
  SELECT COUNT(*) AS total_loans
  FROM `lending-club-499707.lending_club.loan`
),
defaulted AS (
  SELECT COUNT(*) AS defaulted_loans
  FROM `lending-club-499707.lending_club.loan`
  WHERE loan_status IN ('Charged Off', 'Default')
)
SELECT
  CONCAT(100.0 * d.defaulted_loans / t.total_loans, '%') AS default_rate_pct
FROM defaulted d
CROSS JOIN total_loans t;

--Default rate by grade
WITH grade_default AS (
  SELECT
    grade,
    COUNT(*) AS total_loans,
    COUNTIF(loan_status IN ('Charged Off', 'Default')) AS defaulted_loans
  FROM `lending-club-499707.lending_club.loan`
  GROUP BY grade
)

SELECT
  grade,
  CONCAT(ROUND(100.0 * defaulted_loans / total_loans,2),'%') AS default_rate_pct
FROM grade_default
ORDER BY 100.0 * defaulted_loans / total_loans DESC


--Default rate by loan purpose
WITH purpose_default AS (
  SELECT
    purpose,
    COUNT(*) AS total_loans,
    COUNTIF(loan_status IN ('Charged Off', 'Default')) AS defaulted_loans
  FROM `lending-club-499707.lending_club.loan`
  GROUP BY purpose
)

SELECT
  purpose,
  CONCAT(ROUND(100.0 * defaulted_loans / total_loans,2),'%') AS default_rate_pct
FROM purpose_default
ORDER BY 100.0 * defaulted_loans / total_loans DESC


--Default rate by home ownership
WITH home_default AS (
  SELECT
    home_ownership,
    COUNT(*) AS total_loans,
    COUNTIF(loan_status IN ('Charged Off', 'Default')) AS defaulted_loans
  FROM `lending-club-499707.lending_club.loan`
  GROUP BY home_ownership
)

SELECT
  home_ownership,
  CONCAT(ROUND(100.0 * defaulted_loans / total_loans,2),'%') AS default_rate_pct
FROM home_default
ORDER BY 100.0 * defaulted_loans / total_loans DESC
