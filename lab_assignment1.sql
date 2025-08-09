//Database Schema: Consider a simple database with one tables: BankAccount BankAccount//

Query:create database BankAccount;
use BankAccount;

//Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance//

Query:
create table BankAccount (
  acc_id int primary key not null,
  acc_holder_name varchar(30) not null,
  acc_balance int not null
);

desc BankAccount;

+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| acc_id          | int         | NO   | PRI | NULL    |       |
| acc_holder_name | varchar(30) | NO   |     | NULL    |       |
| acc_balance     | int         | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+

//Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.//

Query:
insert into BankAccount values
(101, 'Hiten',25000),
(102,'Sunny',30000),
(103,'Prince',35000),
(104,'Rahul',35000),
(105,'Rohit',40000),
(106,'Chirag',45000);

//Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.//

Query:
select acc_holder_name,acc_balance from BankAccount;

+-----------------+-------------+
| acc_holder_name | acc_balance |
+-----------------+-------------+
| Hiten           |       25000 |
| Sunny           |       30000 |
| Prince          |       35000 |
| Rahul           |       35000 |
| Rohit           |       40000 |
| Chirag          |       45000 |
+-----------------+-------------+

//Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.// 

Query:
select acc_holder_name,acc_balance from BankAccount where acc_balance>30000;

+-----------------+-------------+
| acc_holder_name | acc_balance |
+-----------------+-------------+
| Prince          |       35000 |
| Rahul           |       35000 |
| Rohit           |       40000 |
| Chirag          |       45000 |
+-----------------+-------------+

//Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.//

Query:
update BankAccount set acc_balance=50000 where acc_id=101;

select *from BankAccount;

+--------+-----------------+-------------+
| acc_id | acc_holder_name | acc_balance |
+--------+-----------------+-------------+
|    101 | Hiten           |       50000 |
|    102 | Sunny           |       30000 |
|    103 | Prince          |       35000 |
|    104 | Rahul           |       35000 |
|    105 | Rohit           |       40000 |
|    106 | Chirag          |       45000 |
+--------+-----------------+-------------+





