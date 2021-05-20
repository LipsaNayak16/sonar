drop database if exists infyshop_userdb;
create schema infyshop_userdb;
use infyshop_userdb;

create table buyer(
	buyer_id integer primary key AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	email varchar(30) NOT NULL,
	phone_number bigint not null unique,
	password varchar(50) not null,
    is_privileged boolean default false,
    reward_points integer default 0,
    is_active boolean default false
);

insert into buyer values(101,"Alex","alex@gmail.com",9876543210,"Alex@123",1,50,0);
insert into buyer values(102,"Fred","fred@gmail.com",9885674965,"Fred@123",False,500,True);
insert into buyer values(103,"George","george@gmail.com",9976635452,"George@123",False,0,False);
insert into buyer values(104,"Max","max@gmail.com",9887752363,"Max@123",True,200,True);
insert into buyer values(105,"Josh","josh@gmail.com",9686524141,"Josh@123",True,400,False);

create table seller(
	seller_id integer primary key AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	email varchar(30) NOT NULL,
	phone_number bigint not null unique,
	password varchar(50) not null,
    is_active boolean default false
);

insert into seller values(1001,"Ted","ted@gmail.com",9076543210,"Ted@123",False);
insert into seller values(1002,"David","david@gmail.com",9865523745,"David@123",True);
insert into seller values(1003,"John","john@gmail.com",9523627889,"John@123",True);
insert into seller values(1004,"Michael","michael@gmail.com",9875869412,"Michael@123",False);
insert into seller values(1005,"Bob","bob@gmail.com",9988653278,"Bob@123",True);

create table wishlist(
	buyer_id integer,
	prod_id integer, 
    primary key(buyer_id,prod_id)
);

insert into wishlist values(101, 11111);
insert into wishlist values(102, 11111);
insert into wishlist values(103, 11113);
insert into wishlist values(104, 11115);
insert into wishlist values(105, 11115);

create table cart(
	buyer_id integer,
	prod_id integer,
	quantity integer not null,
    primary key(buyer_id,prod_id)
);

insert into cart values(101, 11111, 10);
insert into cart values(102, 11111, 1);
insert into cart values(103, 11117, 2);
insert into cart values(104, 11121, 5);
insert into cart values(105, 11112, 3);