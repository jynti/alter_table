mysql> USE test;
Database changed
mysql> CREATE TABLE testing_table
    -> (
    -> name VARCHAR(20),
    -> contact_name VARCHAR(20),
    -> roll_no VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.41 sec)

mysql> DESCRIBE testing_table;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| name         | varchar(20) | YES  |     | NULL    |       |
| contact_name | varchar(20) | YES  |     | NULL    |       |
| roll_no      | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> ALTER TABLE testing_table
    -> DROP name,
    -> CHANGE contact_name username VARCHAR(20),
    -> ADD first_name VARCHAR(20),
    -> ADD last_name VARCHAR(20),
    -> CHANGE roll_no roll_no INT
    -> ;
Query OK, 0 rows affected (1.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE testing_table;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| username   | varchar(20) | YES  |     | NULL    |       |
| roll_no    | int(11)     | YES  |     | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)
