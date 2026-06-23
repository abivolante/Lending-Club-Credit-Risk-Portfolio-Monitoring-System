-- =====================================================
-- Section 3: LOSS DISTRIBUTION
-- =====================================================
--
-- Objective:
-- To quantify actual financial losses and identify segments contributing most to portfolio loss
--
-- =====================================================

--Total charged-off exposure
SELECT 
      SUM(loan_amnt) AS total_loss
 FROM `lending-club-499707.lending_club.loan` 
 WHERE loan_status='Charged Off'



--Loss distribution by grade
SELECT
    grade,
    SUM(loan_amnt) AS total_charged_off_exposure
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status = 'Charged Off'
GROUP BY grade
ORDER BY total_charged_off_exposure DESC;



--Loss distribution by purpose
SELECT
    purpose,
    SUM(loan_amnt) AS total_charged_off_exposure
FROM `lending-club-499707.lending_club.loan`
WHERE loan_status = 'Charged Off'
GROUP BY purpose
ORDER BY total_charged_off_exposure DESC;
