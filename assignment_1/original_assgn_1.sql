show databases;
use worldcup;
show tables;
select * from players;
select * from teams;

SELECT team ,max( goalsFor / goalsAgainst) from teams;

SELECT avg(passes) AS average_defender_passes from players where position ='defender';

SELECT avg(passes) AS  average_passes_by_forward FROM players WHERE position ='forward';

SELECT team FROM players WHERE team LIKE '%ia%' AND minutes<200 AND passes>100;

select team, avg(passes/minutes) FROM  players;

SELECT count(surname) from players WHERE team IN (SELECT team from teams WHERE ranking >= 1 AND ranking <= 9) AND minutes > 350;

 select team ,(goalsFor/goalsAgainst) as ratio from teams where goalsFor/goalsAgainst = (select  max(goalsFor/goalsAgainst)  from teams );


