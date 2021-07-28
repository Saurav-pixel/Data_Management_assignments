show databases;
use titanic;
show tables;
select * from titanic;
SELECT first, age , embarked FROM titanic WHERE embarked = "Cherbourg" AND first LIKE "Mrs%" AND age =50;
SELECT embarked  from titanic WHERE fare = (SELECT max(fare) FROM titanic) LIMIT 1;
SELECT max(fare) FROM titanic;

SELECT last, count(last) AS value_occurance FROM titanic GROUP BY last order by value_occurance DESC limit 1;

SELECT (count(survived)/count(first)) AS survival_rate FROM titanic WHERE survived ='yes';

DESC titanic;

alter table titanic change age age text;