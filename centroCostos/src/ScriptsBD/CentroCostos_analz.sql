SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET PAGESIZE 100

EXECUTE dbms_stats.gather_schema_stats( -
        USER                            ,       -
        granularity => 'ALL'            ,       -
        cascade => TRUE                 ,       -
        block_sample => TRUE            );