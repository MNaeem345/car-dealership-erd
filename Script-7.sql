create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

create table salesperson(
	salesperson_id SERIAL primary key, 
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

create table mechanics(
	mechanics_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);


create table service(
	service_ticket SERIAL primary key, 
	mechanics_id SERIAL not null, 
	foreign key(mechanics_id) references mechanics(mechanics_id),
	customer_id SERIAL not null, 
	foreign key(customer_id) references customer(customer_id),
	amount NUMERIC(10,2)
);



create table vehicle(
	VIN SERIAL primary key, 
	model VARCHAR(200),
	make VARCHAR(150),
	car_year INT,
	service_ticket SERIAL not null, 
	foreign key(service_ticket) references service(service_ticket),
	customer_id SERIAL not null,
	foreign key(customer_id) references customer(customer_id),
	salesperson_id SERIAL not null, 
	foreign key(salesperson_id) references salesperson(salesperson_id)
);


create table sales_transaction(
	sales_id SERIAL primary key, 
	VIN SERIAL not null, 
	foreign key(VIN) references vehicle(VIN),
	salesperson_id SERIAL not null, 
	foreign key(salesperson_id) references salesperson(salesperson_id),
	transaction_total NUMERIC(10,2)
);


create table parts(
	parts_id SERIAL primary key,
	mechanics_id SERIAL not null, 
	foreign key(mechanics_id) references mechanics(mechanics_id)
);



create table service_history(
	service_id SERIAL primary key, 
	VIN SERIAL not null,
	foreign key(VIN) references vehicle(VIN)
);


























