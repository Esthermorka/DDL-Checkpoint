--create product table

create table product_1(
	product_id varchar(20) constraint pk_pro primary key,
	product_nmae varchar(20) not null,
	price int check price > 0
)

--create customer table

create table customer(
	customer_id varchar(20) constraint customer_pk primary key,
	customer_name varchar(20)  not null,
	customer_tel int	
)

--create order table

create table orders(
 	customer_id varchar(20),
	product_id varchar(20),
	quantity int,
	total_amount int,
	constraint order_fk1 foreign key(customer_id) references customer(customer_id),
	constraint order_fk2 foreign key(product_id) references product_1(product_id)
)

Alter table product_1 add column category varchar(20)

alter table orders add column OrderDate date default current_date
