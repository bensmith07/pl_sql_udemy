-- 1) Write a program to declare 3 variables with datatype as below and display their values
        -- NUMBER
        -- VARCHAR
        -- DATE

DECLARE
    num1 NUMBER := 1;
    word1 VARCHAR(10) = 'apple';
    date1 DATE = TO_DATE('01-JAN-2022', 'dd-mon-yyy')
BEGIN
    DBMS_OUTPUT.PUT_LINE(num1);
    DBMS_OUTPUT.PUT_LINE(word1);
    DBMS_OUTPUT.PUT_LINE(date1);
END;

-- 2) Write a program to check for a salary value and display the output based on the salary range

DECLARE 
    salary NUMBER := 90000;
BEGIN
    IF salary > 100000
        THEN DBMS_OUTPUT.PUT_LINE('A');
    ELSIF salary > 500000
        THEN DBMS_OUTPUT.PUT_LINE('B');
    ELSIF salary > 250000
        THEN DBMS_OUTPUT.PUT_LINE('C');
    ELSIF salary > 10000
        THEN DBMS_OUTPUT.PUT_LINE('D');
    ELSE
        DBMS_OUTPUT.PUT_LINE('E');
    END IF;
END;

-- 3) write a program using the same conditions as in #2, but use CASE instead of IF

DECLARE 
    salary NUMBER := 90000;
BEGIN
    CASE
        WHEN salary > 100000
            THEN DBMS_OUTPUT.PUT_LINE('A');
        WHEN salary > 500000
            THEN DBMS_OUTPUT.PUT_LINE('B');
        WHEN salary > 250000
            THEN DBMS_OUTPUT.PUT_LINE('C');
        WHEN salary > 10000
            THEN DBMS_OUTPUT.PUT_LINE('D');
        ELSE
            DBMS_OUTPUT.PUT_LINE('E')
    END CASE;
END;

-- 4) write a program to display values from 200 to 300 using a WHILE LOOP

DECLARE 
    cntr NUMBER := 200;
BEGIN
    WHILE cntr <= 300 LOOP
        DBMS_OUTPUT.PUT_LINE(cntr)
        cntr := cntr + 1;
    END LOOP;
END;

-- 5) write a program to display values from 200 to 300 using a FOR loop

DECLARE
    i NUMBER;
BEGIN
    FOR i 200..300 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;

-- 6) Write a program to perform the below steps:
        -- declare a variable
        -- if the variable value is 1 then display values from 300 to 400 usinga  WHILE LOOP
        -- if the variable value is 2 then display values from 400 to 800 usinga  FOR loop
        -- if the variable value is 3 then display the message "wrong choice"

DECLARE 
    choice NUMBER := 1;
    cntr1 NUMBER := 300;
    cntr2 NUMBER;
BEGIN
    IF choice = 1
        THEN 
            WHILE cntr1 <= 400 LOOP
                DBMS_OUTPUT.PUT_LINE(cntr1);
                cntr1 := cntr1 + 1;
            END LOOP;
    ELSIF choice = 2
        THEN
            FOR cntr2 400..800 LOOP
                DBMS_OUTPUT.PUT_LINE(cntr2);
            END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('wrong choice');
    END IF;
END;

