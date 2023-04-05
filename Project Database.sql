-- This section is for dropping table

DROP TABLE  payment;
DROP TABLE  stock;
DROP TABLE  customer;
DROP TABLE  item;
DROP TABLE  shop;

-- This section is for Creating table
create table customer(
c_id   number(5),
c_name   varchar(10),
c_address   varchar(10),
c_ph   number(12)
);

create table payment(
amount number(5),
c_id   number(5),
it_id  number(5)
);

create table item(
it_id  number(5),
it_price  number(5),
s_id   number(5)
);

create table stock(
quantity   varchar(15),
it_id   number(5)
);

create table shop(
s_id   number(5),
s_name   varchar(25),
s_address   varchar(15)
);

-- This section creates primary keys
ALTER TABLE  customer  ADD PRIMARY KEY (c_id);
ALTER TABLE  item  ADD PRIMARY KEY (it_id);
ALTER TABLE  shop  ADD PRIMARY KEY (s_id);


-- This section creates foreign keys
ALTER TABLE payment 
	ADD FOREIGN KEY (c_id) 
	REFERENCES  customer  (c_id);
ALTER TABLE payment 
	ADD FOREIGN KEY (it_id) 
	REFERENCES  item  (it_id);
ALTER TABLE stock 
	ADD FOREIGN KEY (it_id) 
	REFERENCES item (it_id);
ALTER TABLE item 
	ADD FOREIGN KEY (s_id) 
	REFERENCES shop (s_id);

-- This section is for selecting all tables from tab
select *from shop;
select * from item;
select *from stock;
select * from customer;
select *from payment;

-- This section is for describing table
DESCRIBE shop;
DESCRIBE item;
DESCRIBE stock;
DESCRIBE customer;
DESCRIBE payment;

-- Some sample value inserted in this section
INSERT INTO shop VAlUES(1, 'Furniture Shop1','Lahore');
INSERT INTO shop VAlUES(2, 'Furniture Shop2','Islamabad');
INSERT INTO shop VAlUES(3, 'Furniture Shop3','Rawalpindi');
INSERT INTO shop VAlUES(4, 'Furniture Shop4','Karachi');
INSERT INTO shop VAlUES(5, 'Furniture Shop5','Iran');
INSERT INTO shop VAlUES(6, 'Furniture Shop6','France');
INSERT INTO shop VAlUES(7, 'Furniture Shop7','Sialkot');
INSERT INTO shop VAlUES(8, 'Furniture Shop8','Bahawalpur');
INSERT INTO shop VAlUES(9, 'Furniture Shop9','Rahim Yar khan');
INSERT INTO shop VAlUES(10, 'Furniture Shop10','Faislabad');

INSERT INTO item VAlUES(1,550,1);
INSERT INTO item VAlUES(2,650,2);
INSERT INTO item VAlUES(3,750,3);
INSERT INTO item VAlUES(4,850,4);
INSERT INTO item VAlUES(5,950,5);
INSERT INTO item VAlUES(6,1000,6);
INSERT INTO item VAlUES(7,1500,7);
INSERT INTO item VAlUES(8,2000,8);
INSERT INTO item VAlUES(9,2500,9);
INSERT INTO item VAlUES(10,3000,10);


INSERT INTO stock VAlUES('chair1',1);
INSERT INTO stock VAlUES('chair2',2);
INSERT INTO stock VAlUES('chair3',3);
INSERT INTO stock VAlUES('chair4',4);
INSERT INTO stock VAlUES('chair5',5);
INSERT INTO stock VAlUES('Furniture6',6);
INSERT INTO stock VAlUES('Furniture7',6);
INSERT INTO stock VAlUES('Desk',8);
INSERT INTO stock VAlUES('Door',9);
INSERT INTO stock VAlUES('Table',10);

INSERT INTO customer VAlUES(1,'Hamza','Islamabad',01754675993);
INSERT INTO customer VAlUES(2,'Hamza2','Lahore',01754675994);
INSERT INTO customer VAlUES(3,'Hamza3','Islamabad',01754675995);
INSERT INTO customer VAlUES(4,'Nouman4','Rawalpindi',01754675996);
INSERT INTO customer VAlUES(5,'Nouman5','Karachi',01754675997);


INSERT INTO payment VAlUES(550,1,1);
INSERT INTO payment VAlUES(750,1,3);
INSERT INTO payment VAlUES(3000,1,10);
INSERT INTO payment VAlUES(850,2,4);
INSERT INTO payment VAlUES(950,2,5);
INSERT INTO payment VAlUES(1000,2,6);
INSERT INTO payment VAlUES(1500,4,7);
INSERT INTO payment VAlUES(650,5,6);


-- This section is for selecting all values from tables
SELECT * FROM shop;
SELECT * FROM item;
SELECT * FROM stock;
SELECT * FROM customer;
SELECT * FROM payment;

CREATE OR REPLACE PROCEDURE Customer_P (Cust_ID IN Number , Cust_NAME IN VARCHAR2 ) 
IS 
BEGIN
insert into customer(c_id,c_name) values(Cust_id, Cust_NAME);
END;

BEGIN
Customer_P(15,'Moiz');
DBMS_OUTPUT.PUT_LINE('Record inserted Successful');
END;

CREATE TABLE audits (
 audit_id NUMBER PRIMARY KEY,
 table_name VARCHAR2(5),
 transaction_name VARCHAR2(5),
 by_user VARCHAR2(5),
 transaction_date DATE
);





