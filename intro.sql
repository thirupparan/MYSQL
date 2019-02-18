show databases;
create database sample;
use sample;
create table users (userName text); # This comment continues to the end of line 
show tables; -- this comment continues to the end of line jhfkgjhfjhg 
desc users; /* this is an in-line  comment 
you  can write what ever your opinion  here 
*/
# insert your data into table below the query illustrated here 
insert into  users (userName) values ("thiru");
insert into  users (userName) values ("vicky");

# so you want to look at the all the values in this table now follow the query here 
select * from users;

# drop table 
drop table users;
# create table with  multi columns
create table users (id int , username text);
# insert dtats in this table 
insert into users (id, username) values (1, "thiru");
insert into users (id, username) values (2, "vicky"); 

# let's explain null value next 
insert into users (id, username) values (3,null);
insert into users (id, username) values (null,null);

# so  we need to solve this problem first drop the table 
drop table users;
# then recreate the table 
create table users (id int not null, userName text not null);
#then check the table details
 desc users;
 # then you insert null data into table check the out put below  will error shown 
 insert into users (id, userName) values (null,null);
 insert into users (id, userName) values (1,null);
 #remove userName then inser to table data check the out below 
 insert into users (id) values (1);
 insert into users (userName) values ("thiru");
 insert into users (id, userName) values (1,"thiru");
 
 ####007 Mysql Storage Engines and Configuration  #####
 show engines;
 # which engine useing table so code is below here  
show table status;
# we can also change database table engine here
create table test (id int) engine = MyISAM;
# then check table 
show table status;
drop table test;
#we can also set default storage engine 
set default_storage_engine=MYISAM;
#show table 
show table status;
# show engines here
show engines ;
# craete table 
create table test (id int);
show table status;
#but now a days using INNODB so you also set INNOdb default 
set default_storage_engine=INNODB;

#009 Deleting All the Data in a Table

select * from users;
# end result will come 1 is acctive 
select @@SESSION.SQL_SAFE_UPDATES; 
#then you can also off
set sql_SAFE_UPDATES = 0; 
# now you can delte whole data from the table now 
select * from users;
delete from users;
######  Primary Keys #####
drop table users;
create table users (id int primary key, userName text, email text);
desc users;
insert into users (id, userName, email) values (0,"thiru","thiru@gmail.com");
insert into users (id, userName, email) values (1,"thirupparan","thirupparan@gmail.com");

###### 011 Auto Increment ####
 drop table users; 
 ##create table agin 
 create table users (id int primary key auto_increment, userName text, email text);
 ## insert data 
 insert into users (userName, email) values ("thiru","thiru@gmail.com"); 
  insert into users (userName, email) values ("thirupparan","thiru@gmail.com"); 
  
  select * from users; 
  SELECT * FROM sample.users;

## sql more command please follwing the link https://gist.github.com/hofmannsven/9164408 

###--- 012 Narrowing Down Select Statements ----###
select * from users where id=2;
select * from users where userName = 'thiru'; 
 select * from users where userName = 'thirupparan'; 
select id from users where userName = 'thiru'; 
select email from users where userName = 'thiru'; 
select id , email  from users where userName = 'thiru'; 
select email, userName from users where userName = 'thiru'; 
INSERT INTO `sample`.`users` (`userName`, `email`) VALUES ('kumar', 'kumar@gmail.com');
delete from users where id =2 ;
delete from users where userName ='kumar';
## you need to update mode db engine then delete name wise 
set sql_safe_updates=0;







 







