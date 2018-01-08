mysql> use test;
Database changed
mysql> create table testing_table
    -> (
    -> name varchar(20),
    -> contact_name varchar(20),
    -> roll_no varchar(20)
    -> );
Query OK, 0 rows affected (0.41 sec)

mysql> describe testing_table;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| name         | varchar(20) | YES  |     | NULL    |       |
| contact_name | varchar(20) | YES  |     | NULL    |       |
| roll_no      | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> alter table testing_table
    -> drop name,
    -> change contact_name username varchar(20),
    -> add first_name varchar(20),
    -> add last_name varchar(20),
    -> change roll_no roll_no int;
Query OK, 0 rows affected (1.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe testing_table;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| username   | varchar(20) | YES  |     | NULL    |       |
| roll_no    | int(11)     | YES  |     | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)
