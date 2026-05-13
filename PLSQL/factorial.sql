SET SERVEROUTPUT ON;
SET VERIFY OFF;
CREATE OR REPLACE FUNCTION fact (n IN NUMBER) 
RETURN NUMBER  IS 
temp NUMBER:=1;
i NUMBER;
BEGIN
FOR i IN 1 ..n LOOP
temp:=temp * i;
END LOOP;

RETURN temp;
END fact;
/

DECLARE
a NUMBER:=5;
result NUMBER;
BEGIN
result:=fact(a);
DBMS_OUTPUT.PUT_LINE('the factorial of:'|| a ||' is '|| result);
END;
/