-- Create a new table 
CREATE TABLE t(
id INT PRIMARY KEY,
name VARCHAR NOT NULL,
price INT DEFAULT 0
);


--To Insert records into a table
INSERT INTO t(id,name,price) values(1, "jani", 35);


--To Select all the records from the table
SELECT * FROM t;

-- To Insert Multiple Records into a Table
INSERT into t(id, name, price) values(9, 'Haha', 78),
									 (10, 'Jana', 89),
									 (11, 'Buhah', 90);

CREATE TAble test_table(
	id INT,
	name varchar,
	text varchar
);							



INSERT into test_table(id, name, text)
values(1, "jani", "Hello boy"),
	  (2, "John", "Hii Man"),
	  (3, "She", 'Jkolub'),
	  (4, 'Human', 'Landing the reain');
	  
select * from test_table;

/* To select a column from a table*/
select name from test_table;

/* To select unique records based on condition*/
select distinct name from t where price > 30;

select * from t;

/* To perform Aggregations on the columns*/
select max(price) from t;

select min(price) from t;

select AVG(price) from t; 

select avg(price) from t group by name;



select name, avg(price) from t group by name;

select name, avg(price) as Averagevalue from t group by name order by Averagevalue;

/* to create a table*/
create table test_jani(
id int primary key,
email varchar,
phone_number varchar default 00000000
)


select * from test_table;

/* To perform Group by on a column*/
select name, price from t group by name having price > 60;


select * from t group by name having price > 80;


select DISTINCT name, AVG(price) from t group by name having avg(price) > 50; 


/* To fecth records which are starting with J*/
select id, name, price from t where name LIKE 'j%';

/* To get the records which are in the range*/
select id, name, price from t where name in ('Jani', 'jani');

select * from t where price > 35 and price < 80;


/* To get the records in between 35 and 70*/
select * from t where price BETWEEN 35 and 70;


/* To get the aggregate value from a table based on condition and sort it in Descending order and limit upto N records*/
select id, sum(price) from t group by id having sum(price) > 40 ORDER BY sum(price) DESC LIMIT 5;

select id, SUM(price) from t group by id having sum(price) > 40 ORDER BY sum(price) DESC LIMIT 5 OFFSET 1;

/* To perform Joins on two tables*/
select t.id, t.name, t.price, test_table.text from t join test_table on t.id = test_table.id;

/* To perform Union on two tables*/
select id, name from t 
union 
select id, name from test_table;

select id, name from t 
union all
select id, name from test_table;

/* To perform different kinds of Joins on Tables*/
select t.id, t.name, t.price, test_table.text from t full outer join test_table on t.id = test_table.id;

select t.id, t.name, t.price, test_table.text from t left outer join test_table on t.id = test_table.id;

select t.id, t.name, t.price, test_table.text from t right outer join test_table on t.id = test_table.id;

select t.id, t.name, t.price, test_table.text from t cross join test_table on t.id = test_table.id;

create table practise_table(
id int PRIMARY key,
email varchar,
address varchar
)

insert into practise_table(id, email, address)
values (1, 'janimiytagydvh', 'yufhghjgkegfk'),
	   (2, 'janiuqefgi','ygfiqgbqhw'),
	   (3, 'jqhbwdi', 'uqyevf'),
	   (4, 'yfqgdiqghfdiq', 'iyfwd'),
	   (5, 'hevfhqf', 'iqyegf'),
	   (6, 'yfghvwyc', 'weqsaety'),
	   (7,'rtardtdfc', 'jbcwhvdcj'),
	   (8, 'eqwyrtuyq', 'mvkfvnjvbn');

select * from practise_table;

/* To change the Table Name */
alter table t rename to t_tab;


select * from t_tab;

alter table practise_table rename to pract_tab;









