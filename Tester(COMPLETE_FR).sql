--Consumer Data
INSERT INTO consumer VALUES ('Evan', 'Anderson', '333444555', 'eander39@villanova.edu', 'eander39', 'pass1233', '52 Conklin Ave Binghamton NY 13905', 8011866397224321);
INSERT INTO consumer VALUES ('Connor', 'Nachurski', '444555666', 'cnachurs@villanova.edu', 'cnachurs', 'hogrida', '703 Heritage Road Cinnaminson NJ 08077', 9211866397224111);
INSERT INTO consumer VALUES ('Elizabeth', 'Borao', '953449543', 'eborao@villanova.edu', 'eborao', 'A_B4333', '12 Tinton Ave Howell NJ 07710', 6012357397224321);
INSERT INTO consumer VALUES ('Gabrielle', 'Schimpf', '053381537', 'gschimpf@villanova.edu', 'gschimpf', 'g9813', '6 Lipton Ave Stroudsburg PA 18360', 9119217397224355);
INSERT INTO consumer VALUES ('Montse', 'Borjas', '998449587', 'mborjas@villanova.edu', 'mbojas', 'CA29933', '7 Waver Road Chicago IL 60007', 8012309897224321);
--Employee Data
INSERT INTO OS_EMPLOYEE VALUES (19843, 'Liam', 60000, 'ABSJJK985', 1);
INSERT INTO OS_EMPLOYEE VALUES (62893, 'Noah', 65000, '815JJ90KK', 2);
INSERT INTO OS_EMPLOYEE VALUES (79143, 'Greyson', 45000, 'ABS7254KK', 3); 
INSERT INTO OS_EMPLOYEE VALUES (42349, 'James', 25000, '0183JKAHK', 4); 
INSERT INTO OS_EMPLOYEE VALUES (32701, 'Amanda', 70000, 'BBAKDYK46', 5); 
--Warehouse Data
INSERT INTO WAREHOUSE VALUES ('ABSJJK985', '12 Smith Road Randor PA', 87526, 12); 
INSERT INTO WAREHOUSE VALUES ('815JJ90KK', '2 Main Street Red Bank NJ', 92037, 6);
INSERT INTO WAREHOUSE VALUES ('ABS7254KK', '8 Emerson Way Pittsburgh PA', 12734, 1);
INSERT INTO WAREHOUSE VALUES ('0183JKAHK', '13 Lancaster Ave Villanova PA', 29462, 15);
INSERT INTO WAREHOUSE VALUES ('BBAKDYK46', '13 Street Manhattan NY', 87921, 9);

--Product Data
INSERT INTO PRODUCT VALUES (87526, 0, 'yellow shirt', 15, 'shirts', 12); 
INSERT INTO PRODUCT VALUES (92037, 40, 'grey pants', 50, 'pants', 6); 
INSERT INTO PRODUCT VALUES (12734, 10, 'red sweatshirt', 45, 'sweatshirts', 1); 
INSERT INTO PRODUCT VALUES (29462, 15, 'blue socks', 10, 'accessories', 15); 
INSERT INTO PRODUCT VALUES (87921, 6, 'green beenie', 20, 'accessories', 9); 

--Product Order 
INSERT INTO PRODUCT_ORDER VALUES('20-JUN-23', 1, '10-JUN-23', 50, 87526, 8011866397224321, '52 Conklin Ave Binghamton NY 13905', 4, 19843, '333444555', 'ABSJJK985'); 
INSERT INTO PRODUCT_ORDER VALUES('04-FEB-23', 2, '01-FEB-23', 20, 92037, 9211866397224111, '703 Heritage Road Cinnaminson NJ 08077', 2, 62893, '444555666', '815JJ90KK'); 
INSERT INTO PRODUCT_ORDER VALUES('04-MAR-23', 3, '01-MAR-23', 40, 12734, 6012357397224321, '12 Tinton Ave Howell NJ 07710', 3, 79143, '953449543', 'ABS7254KK');
INSERT INTO PRODUCT_ORDER VALUES('13-FEB-23', 4, '02-FEB-23', 30, 29462, 9119217397224355, '6 Lipton Ave Stroudsburg PA 18360', 9, 42349, '053381537', '0183JKAHK');
INSERT INTO PRODUCT_ORDER VALUES('20-APR-23', 5, '15-APR-23', 15, 87921, 8012309897224321, '7 Waver Road Chicago IL 60007', 6, 32701, '998449587', 'BBAKDYK46');

select p.Expected_arr_date, p.Date_placed, c.Customer_address, p.Order_quant, p.Product_id, p.Order_id
from PRODUCT_ORDER p, CONSUMER c
where p.Acc_id = c.Acc_id
and Order_id = 3;

select e.Employee_ID, e.Salary, w.warehouse_address
from OS_EMPLOYEE e, WAREHOUSE w
where e.warehouse_no = w.warehouse_no
and e.Salary < 50000;

select p.product_name, p.price, w.product_quant
from PRODUCT p, WAREHOUSE w
where p.Product_ID = w.product_ID
and price > 20;

select *
from PRODUCT_ORDER;

select * 
from OS_EMPLOYEE;

select * 
from warehouse;
  
select * 
from PRODUCT; 

select *
from CONSUMER_ORDERS;

select *
from EMPLOYEE_INFO;

