-- ==========================================================
-- Scenario 1:
-- Apply a 1% discount to loan interest rates for customers
-- who are above 60 years of age.
-- ==========================================================

SET SERVEROUTPUT ON;

BEGIN
    FOR customer_record IN (
        SELECT customer_id,
               age
        FROM customers
    )
    LOOP
        IF customer_record.age > 60 THEN

            UPDATE customers
            SET loan_interest_rate = loan_interest_rate - 1
            WHERE customer_id = customer_record.customer_id;
        END IF;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Scenario 1 Completed Successfully!');
    DBMS_OUTPUT.PUT_LINE('Loan interest updated for eligible senior customers.');
END;
/

-- Verifying the Result
SELECT customer_id,
       customer_name,
       age,
       loan_interest_rate
FROM customers
ORDER BY customer_id;
