CREATE OR REPLACE PROCEDURE BESTBATSMANOFTEAMPROC (IN TEAM VARCHAR(30))
DYNAMIC RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE CURSOR1 CURSOR WITH RETURN FOR 
	SELECT  P.NAME,P.TEAM_NAME, P.RUNS
	FROM (
   		SELECT TEAM_NAME, MAX(RUNS) as MOSTRUNS
   		FROM IPL.PLAYER WHERE TEAM_NAME = TEAM GROUP BY TEAM_NAME
	) AS X INNER JOIN IPL.PLAYER AS P ON P.TEAM_NAME = X.TEAM_NAME
	AND P.RUNS = X.MOSTRUNS ORDER BY TEAM_NAME;
	OPEN CURSOR1;
END@