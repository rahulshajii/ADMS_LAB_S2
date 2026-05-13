--Write a pl/sql function to check whether the given string is a palindrome or not.
SET SERVEROUTPUT ON;
SET VERIFY OFF;
CREATE OR REPLACE FUNCTION palindrome(str VARCHAR2) 
RETURN VARCHAR2 IS 
rev VARCHAR2(30):='';
i NUMBER;
BEGIN

FOR i IN REVERSE 1 ..LENGTH(str) LOOP 
rev:=rev || SUBSTR(str,i,1);
END LOOP;

IF str = rev THEN 
RETURN 'palindrome';
ELSE 
RETURN 'NOT palindrome'; 
END IF;

END palindrome;
/
DECLARE
str VARCHAR2(30):='RAHUL';
str1 VARCHAR2(30);
BEGIN
str1:=palindrome(str);
DBMS_OUTPUT.PUT_LINE('THE GIVEN STRING IS :'|| str1);
END;
/