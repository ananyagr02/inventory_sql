CREATE TABLE invoice ( 
    id INT PRIMARY KEY, 
    product_name VARCHAR(20), 
    quantity NUMBER(5), 
    MRP DECIMAL(5), 
    invoice_date DATE, 
    invoice_status VARCHAR(50) DEFAULT 'PAID', 
    user_id varchar(20) REFERENCES inv_user(user_id), 
    transaction_id INT REFERENCES transaction(id) 
);



create table transaction(  
 id number(5) primary key,  
 total_amount decimal(10,2),  
 paid decimal(10,2),  
 payment_method varchar(50),  
 transaction_date DATE, 
transaction_type varchar(50) DEFAULT 'purchase', 
 cart_id number(5) references customer_cart(cart_id)  
 );



create table customer_cart(  
 cart_id INT primary key, 
 name varchar(20),  
 mobno number(10) , 
creation_date DATE, 
cust_id varchar(20) references inv_user(user_id) 
 );


create table stores(  
sid number(5) PRIMARY KEY ,   
sname varchar(20),   
address varchar(20),   
phoneno number(10) , 
product_count number(4) 
) 
 
 create table Brands(  
    bid Number(5) primary key,  
    bname varchar(20) 
    );

     
create table provides( 
    bid number(5) references brands(bid), 
    sid number(5) references stores(sid), 
    PRIMARY KEY(sid, bid) 
    ); 
 
create table select_product( 
    ct_id INT references customer_cart(cart_id), 
    pid number(5)references product(pid), 
    quantity number(4), 
    PRIMARY KEY(ct_id, pid) 
    ); 

CREATE TABLE Product( 
 pid number(5) primary key, 
 cid number(5) references categories(cid), 
 bid number(5) references brands(bid), 
 sid number(5) references stores(sid), 
 pname varchar(20), 
 p_stock number(5), 
 price number(5), 
 added_date date, 
 minStock number(3) 
);


CREATE TABLE Categories( 
 cid number(5) primary key, 
 category_name varchar(20), 
 product_count number(6) 
 );


CREATE TABLE Inv_user( 
 user_id varchar(20) primary key, 
 name varchar(20), 
 password varchar(20), 
 last_login timestamp, 
 user_type varchar(10) CHECK (user_type IN('Administrator','Manager','Clerk','Customer')), 
 email varchar(100) 
 );
