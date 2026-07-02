-- =====================================================
-- Scenario 3
-- Transfer Funds
-- =====================================================

CREATE OR REPLACE PROCEDURE TransferFunds(
    p_from NUMBER,
    p_to NUMBER,
    p_amount NUMBER
)

IS
    v_balance NUMBER;

BEGIN
    SELECT balance
    INTO v_balance
    FROM accounts
    WHERE account_id = p_from;

    IF v_balance >= p_amount THEN
        UPDATE accounts
        SET balance = balance - p_amount
        WHERE account_id = p_from;
        UPDATE accounts
        SET balance = balance + p_amount
        WHERE account_id = p_to;

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Transfer Successful.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance.');
    END IF;
END;
/

BEGIN
    TransferFunds(
        101,
        102,
        5000
    );
END;
/

SELECT * FROM accounts;
