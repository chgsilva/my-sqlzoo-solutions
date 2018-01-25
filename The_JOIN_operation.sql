--1 
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

--2
SELECT id,stadium,team1,team2
FROM game ga
where ga.id='1012'


--3
SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
where teamid='GER'

--4
select team1, team2, player from game ga join goal g on g.matchid=ga.id where player LIKE 'Mario%'

--5
SELECT player, teamid, coach, gtime
  FROM goal  go
JOIN eteam et on go.teamid=et.id
 WHERE gtime<=10

 --6
select mdate, eteam. teamname from game
join eteam on team1=eteam.id
where eteam.coach='Fernando Santos'

--7
select player from goal go
join game ga on go.matchid=ga.id
where ga.stadium='National Stadium, Warsaw'

--8
SELECT distinct(player)
FROM game JOIN goal ON matchid = id 
WHERE (team1='GER' or team2='GER') and teamid!='GER' 

--9
SELECT teamname, COUNT(teamname)
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname

--10
select stadium, count(stadium) from game ga
join goal go on ga.id=go.matchid
group by stadium

--11
SELECT matchid, mdate, count(matchid)
FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL')
group by matchid, mdate

--12
select matchid, mdate, count(matchid)
from game
join goal  on id=matchid
where teamid='GER'
group by matchid, mdate

--13
SELECT mdate, 
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) AS score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) AS score2  
FROM game left JOIN goal ON matchid = id
group by mdate, team1, team2
order by mdate, matchid, team1 and team2
