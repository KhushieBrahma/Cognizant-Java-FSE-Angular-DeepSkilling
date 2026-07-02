-- =====================================================
-- Scenario 2
-- Employee Bonus
-- =====================================================

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_department VARCHAR2,
    p_bonus NUMBER
)

IS
BEGIN
    UPDATE employees
    SET salary = salary + (salary * p_bonus / 100)
    WHERE department = p_department;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee bonus updated.');
END;
/

BEGIN
    UpdateEmployeeBonus(
        'IT',
        10
    );

END;
/

SELECT * FROM employees;
