INSERT INTO Brands (id, name) VALUES 
(11, 'Samsung'), 
(12, 'Pepperfry'), 
(13, 'LG'), 
(14, 'Philips'), 
(15, 'Apple'), 
(16, 'Hasbro'), 
(17, 'Classmate'), 
(18, 'H&M'), 
(19, 'HP'), 
(20, 'Nilkamal'), 
(21, 'Pigeon'), 
(22, 'Nike'), 
(23, 'Nivea');

INSERT INTO stores(sid, sname, address, phoneNo,product_count) 
VALUES(1,'Shoppers Stop','Katpadi vellore',9456781234,0);
INSERT INTO stores(sid, sname, address, phoneNo,product_count) 
VALUES(2,'Spar Hypermarket','Katpadi vellore',8457811111,0);
INSERT INTO stores(sid, sname, address, phoneNo,product_count) 
VALUES(3,'Tata Croma','Katpadi vellore',7456123456,0);
INSERT INTO stores(sid, sname, address, phoneNo,product_count) 
VALUES(4,'Health Buddy','Katpadi vellore',1256799234,0);
INSERT INTO stores(sid, sname, address, phoneNo,product_count)
VALUES(5,'Fabindia','Katpadi vellore',9999781234,0);


INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES('1', 'Aman Gupta', 'pass123', TIMESTAMP '2024-04-12 10:54:23', 'Administrator','aman@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(2, 'Shreya ', 'abcs1234', TIMESTAMP '2024-04-11 11:54:13.000' , 'Manager','shreya@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(3, 'Gagan Singh ', 'p4ofg',TIMESTAMP '2024-03-15 09:34:23.000' , 'Clerk','gagan@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(4, 'Neha Gupta ', 'dripws',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','neha@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(5, 'Ram', 'arrwws',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','ram@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(6, 'Naman ', 'strril',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','naman@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(7, 'Raman', 'diwws',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','raman@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(8, 'Naira ', '1233s',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','neha@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(9, 'Arushi Talwar', '23sedd',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','arushi@gmail.com'); 
INSERT INTO Inv_user(user_id, name, password, last_login, user_type,email) 
VALUES(10, 'Aditi Vasudeva', 'ueysw',TIMESTAMP '2024-02-12 07:50:23.000' , 'Customer','aditi@gmail.com'); 


INSERT INTO Categories(cid, category_name,product_count) 
VALUES(1,'Electronics',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(2,'Grocery',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(3,'Appliances',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(4,'HealthCare',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(5,'Cosmetics',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(6,'Furniture',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(7,'Home Furnishings',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(8,'Clothing',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(9,'Toys&Games',0) ;
INSERT INTO Categories(cid, category_name,product_count) 
VALUES(10,'Stationery',0) ;


INSERT INTO PROVIDES 
    VALUES(11,3);
INSERT INTO PROVIDES 
    VALUES(12,5);
INSERT INTO PROVIDES 
    VALUES(13,3);
INSERT INTO PROVIDES 
    VALUES(14,3);
INSERT INTO PROVIDES 
    VALUES(15,3);
INSERT INTO PROVIDES 
    VALUES(16,2);
INSERT INTO PROVIDES 
    VALUES(17,2);
INSERT INTO PROVIDES 
    VALUES(18,1);
INSERT INTO PROVIDES 
    VALUES(19,3);
INSERT INTO PROVIDES 
    VALUES(20,5);
INSERT INTO PROVIDES 
    VALUES(21,2);
INSERT INTO PROVIDES 
    VALUES(22,1);
INSERT INTO PROVIDES 
    VALUES(23,4);


INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid, sid ) 
VALUES(101, 1, 'Mobile Phone S21', 25, 65000, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 10,11,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid, sid  ) 
VALUES(102, 6, 'Sofa', 15, 45000, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 5,12,5); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(103, 3, 'Washing Machine', 25, 45000, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 10,13,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid, sid  ) 
VALUES(104, 3, 'Fan', 21, 2000, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 8,14,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(105, 1, 'Mobile iPhone 15', 25, 95000, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 10,15,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(106, 9, 'Jenga', 25, 400, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 10,16,2); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(107, 10, 'Single-line Notebook', 110, 150, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 40,17,2); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(108, 8, 'Skirt', 45, 450, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 20,18,1); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(109, 1, 'Laptop', 25, 65000, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 10,19,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(110, 10, 'Pencil Box', 15, 150, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 5,17,2); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(111, 5, 'Moisturizer', 25, 250, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 10, 23, 4); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(112, 7, 'Table', 21, 2000, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 8,20,5); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid, sid  ) 
VALUES(113, 7, 'Bed', 25, 75000, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 10,20,5); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid, sid  ) 
VALUES(114, 3, 'Tubelight', 25, 2000, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 10,14,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock , bid, sid ) 
VALUES(115, 3, 'Electric Kettle', 50, 3000, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 30,21,3); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid, sid  ) 
VALUES(116, 8, 'Shoes', 85, 7000, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 20,22,1); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock  ) 
VALUES(117, 8, 'Shoes', 85, 7000, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 20); 
INSERT INTO Product(pid, cid, pname, p_stock, price, added_date, minStock, bid) 
VALUES(118, 8, 'Shoes', 85, 7000, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 20,22); 


INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date) 
VALUES (2,5 , 'Ram', '8580761225', TO_DATE('2023-06-19', 'YYYY-MM-DD'));
INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date)  
VALUES (3,6, 'Naman', '7475113524', TO_DATE('2023-04-03', 'YYYY-MM-DD'));
INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date)  
VALUES (4, 7, 'Raman', '6569342108', TO_DATE('2024-01-15', 'YYYY-MM-DD'));
INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date)  
VALUES (5, 8, 'Naira', '8580761225', TO_DATE('2024-02-19', 'YYYY-MM-DD'));
INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date)  
VALUES (6, 9, 'Arushi Talwar', '6569342108', TO_DATE('2024-03-20', 'YYYY-MM-DD'));
INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date)  
VALUES (7, 10, 'Aditi Vasudeva', '9415632149', TO_DATE('2024-02-08' , 'YYYY-MM-DD'));
INSERT INTO Customer_Cart (cart_id, cust_id, name, mobno, creation_date)  
VALUES (8,5 , 'Ram', '8580761225', TO_DATE('2023-06-19', 'YYYY-MM-DD'));



INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(1, 95000.00, 95000.00, 0.00, 18.50, 10.00, 'Credit Card', 1, '2023-11-27', 'Purchase'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(2, 450.00, 450.00, 0.00, 18.50, 10.00, 'UPI', 2 '2023-06-19 ', 'Purchase'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(3, 45000.00, 45000.00, 0.00, 15.50, 20.00, 'Online Banking', 3 '2023-04-03 ', 'Purchase'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(4, 45000.00, 40000.00, 5000.00, 17.50, 15.00, 'Cash', 4, '2024-01-15', 'Purchase'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(5, 800.00, 800.00, 0.00, 90.00, 0.00, 'Online Banking', 5, '2024-02-19 ', 'Purchase'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(6, 4000.00, 4000.00, 0.00, 8.50, 0.00, 'Debit Card', 6,'2024-03-20', 'Purchase'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(7, 600.00, 600.00, 0.00, 3.75, 0.00, 'UPI', 7,'2024-02-08 ', 'Refund'), 
    INSERT INTO Transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id, transaction_date, transaction_type) VALUES 
(8, 65000.00, 65000.00, 0.00, 10.00, 0.00, 'Cash', 8, '2024-01-11  ','Purchase');

INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(1, 1,'Mobile iPhone 15', 95000.00, 1, 1 '2023-11-27', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(2,2, 'skirt', 225.00, 2, 2, '2023-06-19 ', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(3,3, 'sofa', , 45000.00, 1,3, '2023-04-03 ', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(4,4, 'washing machine',45000.00 , 1, 4, '2024-01-15 ', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(5,5, 'Jenga',400.00 , 2, 2, '2024-02-19 ', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(6,6, 'Fan',2000.00 , 2, 4, '2024-03-20 ', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(7,7, 'single-line Notebook', 150.00, 4, 1, '2024-02-08  ', 'Paid'), 
    INSERT INTO Invoice (id, transaction_id,product_name, net_price, quantity, user_id, invoice_date, invoice_status) VALUES 
(8,8, 'Mobile Phone S21',65000.00 , 1, 3, '2024-01-11 ', 'Paid');



