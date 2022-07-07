"Insert Row Date"
insert into sakila.actor (first_name, last_name, last_update)
values ("Johnny", "Smith", "2019-01-17 08:43:11");

SELECT * FROM sakila.actor;

select * from address 
where address2 = Null;

select * from sakila.address 
where address2 is null;

select * from sakila.staff
where picture is null and store_id = 2;

update sakila.actor
set first_name = "Jonathan"
where actor_id = 201;

select * from sakila.staff
where picture and password is null;


delete from sakila.actor
where actor_id = 201;