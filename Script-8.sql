insert into customer(
	customer_id,
	first_name,
	last_name
) values(
	1, 
	'Adam',
	'Rover'
);

insert into customer(
	customer_id, 
	first_name, 
	last_name
) values(
	2,
	'Jake',
	'Holland'
);

insert into salesperson(
	salesperson_id,
	first_name,
	last_name 
) values(
	1,
	'Timothy',
	'Carter'
);

insert into salesperson(
	salesperson_id,
	first_name,
	last_name
) values(
	2,
	'Anthony',
	'Fornes'
);

insert into mechanics(
	mechanics_id,
	first_name,
	last_name
) values(
	1,
	'Dilion',
	'DuDois'
);

insert into mechanics(
	mechanics_id,
	first_name,
	last_name 
) values(
	2, 
	'Louis',
	'Monroe'
);

insert into service(
	service_ticket,
	mechanics_id,
	customer_id,
	amount
) values(
	1,
	1,
	1,
	3500.50
);

insert into service(
	service_ticket,
	mechanics_id,
	customer_id,
	amount
) values(
	2,
	2,
	2,
	3000.00
);

insert into vehicle(
	VIN,
	model,
	make,
	car_year,
	service_ticket,
	customer_id,
	salesperson_id
) values(
	894753-04613,
	'Z1 TURBO',
	'ARCTIC CAT',
	2010,
	1,
	1,
	1
);

insert into vehicle(
	VIN,
	model,
	make,
	car_year,
	service_ticket,
	customer_id,
	salesperson_id
) values(
	092791-78934,
	'FORMULA DELUXE 500 FAN',
	'SKI-DOO',
	2001,
	2,
	2,
	2
);


insert into sales_transaction(
	sales_id,
	VIN,
	salesperson_id,
	transaction_total 
) values(
	1,
	894753-04613,
	1,
	56570.00
);

insert into sales_transaction(
	sales_id,
	VIN,
	salesperson_id,
	transaction_total 
) values(
	2,
	092791-78934,
	2,
	30570.00
);

insert into parts(
	parts_id,
	mechanics_id
) values(
	9273546,
	1
);

insert into parts(
	parts_id,
	mechanics_id
) values(
	7490279,
	1
);


create or replace procedure add_service(_service_id INTEGER , _VIN INTEGER)

as $MAIN$
begin
	insert into service_history(service_id, VIN)
	values(_service_id, _VIN);
end;
$MAIN$
language plpgsql;

CALL add_service(1, 894753-04613);

CALL add_service (2, 092791-78934);
































