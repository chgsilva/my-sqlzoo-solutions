--1
SELECT who, country.name
  FROM ttms JOIN country
         ON (ttms.country=country.id)
 WHERE games = 2000

 --2
 select who, color, name from ttms join country c on c.id=country where c.name='Sweden'

 --3
 select games from ttms join country c on c.id=country where color='gold' and name='China'

 --4
 SELECT who
  FROM ttws JOIN games
            ON (ttws.games=games.yr)
  WHERE city = 'Barcelona'

  --5
 select city, color
from ttws t 
inner join games g on t.games=g.yr 
where t.who='Jing Chen'

--6
select who, g.city
from ttws t
inner join games g on g.yr=t.games
where t.color='gold'

--7
select t.games, t.color
from ttmd  t
inner join team tt on tt.id=t.team
where tt.name='Yan Sen'

--8
select name
from team t
inner join ttmd tt on tt.team=t.id
where games='2004' and color='gold'

--9
select name
from ttmd 
inner join team on team.id=team
where country = 'FRA'