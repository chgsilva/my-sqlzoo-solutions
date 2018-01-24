--1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--2
select name
from world
where continent='Europe' and 
gdp/population > (select gdp/population from world where name='United Kingdom')

--3
select name, continent 
from world
where continent = (select continent from world where name='Australia') or continent = (select continent from world where  name= 'Argentina')
order by name asc


--4
select name, population from world
where population > (select population from world where name='Canada') and population < (select population from world where name='Poland')

--5
select name, concat(round((w.population*100/(select population from world where name='Germany')),0),'%') from world w where continent='Europe' 

--6
select name from world where gdp > all(select gdp from world where gdp > 0 and continent='Europe')

--7
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

--8
select continent, name from world w
where name <= ALL(select name from world where w.continent = continent)

--9
select name, continent, population from world w where 25000000 >= ALL(select population from world where continent=w.continent)

--10
select name, continent from world w where population>ALL(select population*3 from world where continent=w.continent and population>0 and w.name!=name)