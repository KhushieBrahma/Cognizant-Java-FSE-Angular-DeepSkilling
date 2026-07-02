-- ==========================================================
-- Scenario 2:
-- Promote customers to VIP status if their balance is
-- greater than 10000.
-- ==========================================================

SET SERVEROUTPUT ON;

BEGIN
    FOR customer_record IN (
        SELECT customer_id,
               balance
        FROM customers
    )
    LOOP
        IF customer_record.balance > 10000 THEN
            UPDATE customers
            SET isVIP = 'TRUE'
            WHERE customer_id = customer_record.customer_id;
        END IF;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Scenario 2 Completed Successfully!');
    DBMS_OUTPUT.PUT_LINE('VIP status updated for eligible customers.');

END;
/

-- Verifying the Result
SELECT customer_id,
       customer_name,
       balance,
       isVIP
FROM customers
ORDER BY customer_id;
