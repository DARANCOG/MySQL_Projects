create table products (
	id int not null auto_increment,
    name varchar (50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key(id),
    foreign key(created_by) references user(id)
);

rename table products to product;

insert into product (name, created_by, marca)
values 
	('ipad', '1','apple'),
    ('iphone','1','apple'),
    ('watch','2','apple'),
    ('macbook','1','apple'),
    ('imac','3','apple'),
    ('ipad mini','2','apple');
    
select * from product;
select * from user;
show tables;


#se seleccion los parametros a llamar de la tabla(alias(u)) 
#se selecciona la instrucción 
#se selecciona la tabla a relacionar (alias(p))
# seleccionar e igualar las columnas a relacionar 

#LEFT JOIN

Select u.id, u.name, u.email, p.name from user u left join product p on u.id = p.created_by;

#RIGHT JOIN

Select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;

#INNER JOIN

Select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;

#CROSS JOIN

Select u.id, u.name, p.id, p.name from user u cross join product p;

# GROUP BY
select count(p.id), u.name from product p left join user u on u.ud = p.created_by group by p.created_by;

# HAVING

select count(p.id), u.name from product p left join user u 
on u.ud = p.created_by group by p.created_by
having count(p.id) >= 2;

drop table product;
drop table user;
drop table usuarios;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
