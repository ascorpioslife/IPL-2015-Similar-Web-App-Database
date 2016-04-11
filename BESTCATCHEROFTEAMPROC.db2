CREATE OR REPLACE PROCEDURE BESTCATCHEROFTEAMPROC (IN TEAM VARCHAR(30))
DYNAMIC RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE CURSOR1 CURSOR WITH RETURN FOR 
	SELECT  P.NAME,P.TEAM_NAME, P.CATCHES
	FROM (
   		SELECT TEAM_NAME, MAX(CATCHES) as MOSTCATCHES
   		FROM IPL.PLAYER WHERE TEAM_NAME = TEAM GROUP BY TEAM_NAME
	) AS X INNER JOIN IPL.PLAYER AS P ON P.TEAM_NAME = X.TEAM_NAME
	AND P.CATCHES = X.MOSTCATCHES ORDER BY TEAM_NAME;
	OPEN CURSOR1;
END@