-- ==========================================================
-- Scenario 3:
-- Send reminders to customers whose loans are due within
-- the next 30 days.
-- ==========================================================

SET SERVEROUTPUT ON;

BEGIN
    FOR loan_record IN (

        SELECT c.customer_name,
               l.loan_id,
               l.due_date
        FROM customers c
        JOIN loans l
        ON c.customer_id = l.customer_id

        WHERE l.due_date <= SYSDATE + 30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: '
            || loan_record.customer_name
            || ' has Loan ID '
            || loan_record.loan_id
            || ' due on '
            || TO_CHAR(loan_record.due_date, 'DD-MON-YYYY')
        );
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Scenario 3 Completed Successfully!');
END;
/

-- Verifying the Loan Records
SELECT c.customer_name,
       l.loan_id,
       l.due_date
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
ORDER BY l.due_date;
