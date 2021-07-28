show databases;
use titanic;
show tables;
select * from titanic;

select * from titanic where fare = 0;


SELECT COUNT(first) FROM titanic WHERE age > 50 AND embarked="Cherbourg" AND first LIKE "Mrs%" ;

SELECT embarked  FROM titanic WHERE fare = (SELECT max(fare) FROM titanic) ;

SELECT last, count(last) AS value_occurance FROM titanic GROUP BY last order by value_occurance DESC LIMIT 1;

SELECT (count(survived)/count(first)) AS survival_rate FROM titanic WHERE survived ='yes' AND class = 3;
 select count(first) from titanic;
select class,(select count(survived) from titanic where survived ='yes'  )/sum(count(survived)) over(partition by class 
)  as survival_rate 
 from titanic 
group by class
order by class asc ;

desc titanic;