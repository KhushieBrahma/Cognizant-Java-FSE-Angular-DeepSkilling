-- =====================================================
-- Scenario 1
-- Process Monthly Interest
-- =====================================================

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN
    UPDATE accounts
    SET balance = balance + (balance * 0.01)
    WHERE account_type = 'Savings';
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Monthly interest processed successfully.');
END;
/

BEGIN
    ProcessMonthlyInterest;
END;
/

SELECT * FROM accounts;
