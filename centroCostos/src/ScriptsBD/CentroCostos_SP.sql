
SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET PAGESIZE 100

---------------------------------------------------------------------------
/*
REM **************************************************************************

REM procedure and statement trigger to allow dmls during business hours:
CREATE OR REPLACE PROCEDURE secure_dml
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205, 
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;
/

CREATE OR REPLACE TRIGGER secure_employees
  BEFORE INSERT OR UPDATE OR DELETE ON employees
BEGIN
  secure_dml;
END secure_employees;
/

ALTER TRIGGER secure_employees DISABLE;
*/

---------------------------------------------------------------------------

COMMIT;