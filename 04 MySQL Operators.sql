use sample;
 create table users (id int primary key auto_increment, name text, age int);
 insert into users (name, age) values ("vicky", 31);
 select * from users;
 # how many rows here
 select count(*) from users;
 select * from users where id = 3;
  select * from users where age = 29;
  # age less than 30 
  select * from users where age < 30;
  # age greater than 30
   select * from users where age > 30;
   #age less than to equal to  30
  select * from users where age <= 30;
    select * from users where age >= 30;
    # let's say one name is equal to thiru
    INSERT INTO `sample`.`users` (`id`, `name`, `age`) VALUES ('9', 'vicky', '32');
    select * from users where name ="vicky";
    #not equal to vicky 
    select * from users where name !="vicky";
    # is operator using  
    select * from users where name is not  null;
    #like operator 
    select * from users where name LIKE "%ku%";
     
    #--- LOGICAL OPERATORSS--##
    select * from users where age > 30 and name ="vicky";
    
    select * from users where age < 30 and id >= 5 and name like  "% a %" and name is not null;
    select * from users where (age < 20 or age > 40 )and name ="kumar"; 
    # or vs xor 
    select * from  users where age <30 or age <30;
    # xor apply 
        select * from  users where age <30 xor age <30;

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    
   


  