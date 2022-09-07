------------------
-- BASIC STRUCTURE
------------------

DECLARE
    -- <declarations section>
BEGIN 
    -- <executable commands>
EXCEPTION
    -- <exception handling>
END;

------------------------------
-- FIRST EXAMPLE: display text
------------------------------
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World')
END;

-------------------------
-- DECLARING VARIABLES --
-------------------------

DECLARE
    ordernumber NUMBER:=1001;       -- two ways of assigning default variable values, := or "default"
    orderid NUMBER default 1002;    
    customername VARCHAR2(20) := 'john';

BEGIN
    DBMS_OUTPUT.PUT_LINE(ordernumber);
    DBMS_OUTPUT.PUT_LINE(orderid);
    DBMS_OUTPUT.PUT_LINE(customername);
END;

------------------------------
-- CHANGING VARIABLE VALUES --
------------------------------
DECLARE 
    ordernumber NUMBER:=1001;
BEGIN 
    ordernumber := 1234;
    DBMS_OUTPUT.PUT_LINE(ordernumber);
END;

-------------------------
-- DECLARING CONSTANTS --
-------------------------
DECLARE
    ordernumber CONSTANT NUMBER:=1001;
BEGIN
    ordernumber := 1234;  -- ! THROWS AN ERROR ! --
END;

--------------------
-- VARIABLE SCOPE -- 
--------------------

DECLARE
    num1 NUMBER := 100; -- global variables defined in this block
BEGIN
    DBMS_OUTPUT.PUT_LINE('Global Variable #1: ' || num1);

    DECLARE -- sub-block begins here
        num2 NUMBER := 200; -- local variable defined here
    BEGIN
        DBMS_OUTPUT.PUT_LINE('You can access global variables like ' || num1 || "here.")
        DBMS_OUTPUT.PUT_LINE('You can also access local variables like ' || num2 || "here.")
    END;

END;
    
-----------------------------
-- IF/THEN/ELSE STATEMENTS --
-----------------------------

DECLARE 
    total_amount NUMBER := 105;
    discount NUMBER := 0;
BEGIN

    IF total_amount > 200
        THEN discount := total_amount * .20; 
    ELSIF total_amount >= 100 AND total_amount <= 200
        THEN  discount : = total_amount * .10;
    ELSE 
        discount := total_amount * .05;
    END IF;

    DBMS_OUTPUT.PUT_LINE(discount);

END;

---------------------
-- CASE STATEMENTS --
---------------------

DECLARE 
    total_amount NUMBER := 105;
    discount NUMBER := 0;
BEGIN 
    CASE
        WHEN total_amount > 200
            THEN discount := total_amount * .20;
        WHEN total_amount >= 100 AND total_amount <= 200
            THEN discount := total_amount * .10;
        ELSE
            discount := total_amount * .05;
        END CASE;
    DBMS_OUTPUT.PUT_LINE(discount);
END;

-----------------
-- WHILE LOOPS --
-----------------
    
DECLARE 
    cntr NUMBER(2) := 10;
BEGIN
    WHILE cntr < 20 
        LOOP
        DBMS_OUTPUT.PUT_LINE('value of counter: ' || cntr);
        cntr := cntr + 1
        END LOOP;
END;

---------------
-- FOR LOOPS --
---------------

DECLARE
    cntr NUMBER(2) := 10
BEGIN
    FOR cntr IN 10..20
        LOOP
        DBMS_OUTPUT.PUT_LINE('value of cntr: ' || cntr);
        END LOOP;
END;