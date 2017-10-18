BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Training Seat` (
	`unique_id`	varchar ( 10 ),
	`employee_id`	varchar ( 10 ),
	`training_prog_id`	varchar ( 5 ),
	PRIMARY KEY(`unique_id`)
);
CREATE TABLE IF NOT EXISTS `Training Program` (
	`program_id`	varchar ( 5 ),
	`start_date`	date,
	`end_date`	date,
	`max_students`	integer,
	PRIMARY KEY(`program_id`)
);
CREATE TABLE IF NOT EXISTS `Product Type` (
	`type_id`	varchar ( 10 ),
	`description`	varchar,
	PRIMARY KEY(`type_id`)
);
CREATE TABLE IF NOT EXISTS `Product` (
	`product_id`	varchar ( 10 ),
	`type_id`	varchar ( 10 ),
	`customer_id`	varchar ( 10 ),
	`price`	varchar,
	`title`	varchar,
	`description`	varchar,
	PRIMARY KEY(`product_id`)
);
CREATE TABLE IF NOT EXISTS `Payment Types` (
	`payment_type_id`	varchar ( 10 ),
	`type_name`	varchar,
	PRIMARY KEY(`payment_type_id`)
);
CREATE TABLE IF NOT EXISTS `Order_product` (
	`product_id`	varchar ( 10 ),
	`order_id`	varchar ( 10 ),
	`price`	varchar
);
CREATE TABLE IF NOT EXISTS `Order` (
	` order_id`	varchar ( 10 ),
	`customer_id`	varchar ( 10 ),
	`price`	varchar,
	`title`	varchar,
	`description`	varchar,
	`is_active`	boolean,
	PRIMARY KEY(` order_id`)
);
CREATE TABLE IF NOT EXISTS `Employee` (
	`employee_id`	varchar ( 10 ),
	`department_id`	varchar ( 10 ),
	`name`	varchar,
	`DOB`	varchar,
	`Position`	varchar,
	PRIMARY KEY(`employee_id`)
);
CREATE TABLE IF NOT EXISTS `Department` (
	`department_id`	varchar ( 10 ),
	`expense_budget`	integer,
	`employee_id`	varchar ( 10 ),
	PRIMARY KEY(`department_id`)
);
CREATE TABLE IF NOT EXISTS `Customer_payment` (
	`payment_id`	varchar ( 10 ),
	`payment_type_id`	varchar ( 10 ),
	`customer_id`	varchar ( 10 ),
	`account_number`	interger,
	PRIMARY KEY(`payment_id`)
);
CREATE TABLE IF NOT EXISTS `Customer` (
	`customer_id`	varchar ( 10 ),
	`first_name`	varchar,
	`last_name`	varchar,
	`begin_date`	date,
	`active_status`	boolean,
	PRIMARY KEY(`customer_id`)
);
CREATE TABLE IF NOT EXISTS `Computer` (
	`computer_id`	varchar ( 10 ),
	`employee_id`	varchar ( 10 ),
	`decom_date`	Date,
	`purchase_date`	Date,
	PRIMARY KEY(`computer_id`)
);
CREATE INDEX IF NOT EXISTS `FK9` ON `Customer_payment` (
	`payment_type_id`
);
CREATE INDEX IF NOT EXISTS `FK8` ON `Order` (
	`customer_id`
);
CREATE INDEX IF NOT EXISTS `FK7` ON `Product` (
	`customer_id`
);
CREATE INDEX IF NOT EXISTS `FK6` ON `Product` (
	`type_id`
);
CREATE INDEX IF NOT EXISTS `FK5` ON `Training Seat` (
	`training_prog_id`
);
CREATE INDEX IF NOT EXISTS `FK4` ON `Training Seat` (
	`employee_id`
);
CREATE INDEX IF NOT EXISTS `FK3` ON `Computer` (
	`employee_id`
);
CREATE INDEX IF NOT EXISTS `FK2` ON `Department` (
	`employee_id`
);
CREATE INDEX IF NOT EXISTS `FK12` ON `Order_product` (
	`order_id`
);
CREATE INDEX IF NOT EXISTS `FK11` ON `Order_product` (
	`product_id`
);
CREATE INDEX IF NOT EXISTS `FK10` ON `Customer_payment` (
	`customer_id`
);
CREATE INDEX IF NOT EXISTS `FK` ON `Employee` (
	`department_id`
);
COMMIT;
