CREATE OR REPLACE TRIGGER update_category_count_on_insert 
AFTER INSERT ON Product 
FOR EACH ROW 
BEGIN 
  UPDATE Categories 
  SET product_count = product_count + :NEW.p_stock  
  WHERE cid = :NEW.cid; 
END; 


CREATE OR REPLACE TRIGGER check_stock_threshold 
AFTER INSERT OR UPDATE ON select_product 
FOR EACH ROW 
DECLARE 
    v_p_stock product.p_stock%TYPE; 
    v_min_stock product.min_stock%TYPE; 
BEGIN 
    SELECT p_stock, min_stock INTO v_p_stock, v_min_stock 
    FROM product 
    WHERE pid = :NEW.pid; 
    IF v_p_stock < v_min_stock THEN 
        DBMS_OUTPUT.PUT_LINE('Product stock is below the minimum stock threshold.'); 
    END IF; 
END;


CREATE OR REPLACE TRIGGER update_creation_date 
BEFORE INSERT ON Customer_Cart 
FOR EACH ROW 
BEGIN 
    :NEW.creation_date := SYSDATE; 
END; 


CREATE OR REPLACE TRIGGER update_product_count 
AFTER INSERT ON product 
FOR EACH ROW 
DECLARE 
    store_id NUMBER; 
BEGIN 
    store_id := :NEW.sid; 
 
    UPDATE stores 
    SET product_count = product_count + :NEW.p_stock 
    WHERE sid = store_id; 
END; 


 
CREATE OR REPLACE TRIGGER update_stock_trigger 
BEFORE INSERT ON select_product 
FOR EACH ROW 
BEGIN 
  UPDATE Product 
  SET p_stock = p_stock - :NEW.quantity 
  WHERE pid = :NEW.pid; 
END; 



CREATE OR REPLACE FUNCTION get_product_stock(id NUMBER) 
RETURN NUMBER IS 
    stock_qty NUMBER; 
BEGIN 
    SELECT p.p_stock 
    INTO stock_qty 
    FROM Product p 
    WHERE p.pid = id; 
     
    RETURN stock_qty; 
EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        RETURN NULL; -- Return NULL if product ID is not found 
    WHEN OTHERS THEN 
        RAISE_APPLICATION_ERROR(-20001, 'An error occurred while retrieving product stock.'); 
END get_product_stock; 

DECLARE 
    stock_qty NUMBER; 
BEGIN 
    stock_qty := get_product_stock(101); 
    IF stock_qty IS NOT NULL THEN 
        DBMS_OUTPUT.PUT_LINE('Stock Quantity: ' || stock_qty); 
    ELSE 
        DBMS_OUTPUT.PUT_LINE('Product not found.'); 
    END IF; 
END; 



CREATE OR REPLACE FUNCTION get_brand_info(brand_id IN NUMBER) RETURN VARCHAR2 IS 
    brand_name VARCHAR2(100); 
BEGIN 
    SELECT brand_name INTO brand_name 
    FROM brandS 
    WHERE brand_id = bid; 
 
    RETURN brand_name; 
EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        RETURN 'Brand Not Found'; 
END;
/

DECLARE 
    CURSOR brand_cursor IS 
        SELECT bid, bname 
        FROM brand; 
BEGIN 
    FOR brand_rec IN brand_cursor LOOP 
        DBMS_OUTPUT.PUT_LINE('Brand ID: ' || brand_rec.bid || ', Brand Name: ' || brand_rec.bname); 
    END LOOP; 
END;


    CREATE OR REPLACE FUNCTION calculate_invoice_total( 
    p_price DECIMAL, 
    p_quantity INT 
) 
RETURN DECIMAL 
IS 
    v_total_price DECIMAL(10,2); 
BEGIN 
    v_total_price := p_price * p_quantity; 
    RETURN v_total_price; 
END; 


DECLARE 
    -- Declare variables to hold column values 
    v_pid Product.pid%TYPE; 
    v_cid Product.cid%TYPE; 
    v_bid Product.bid%TYPE; 
    v_sid Product.sid%TYPE; 
    v_pname Product.pname%TYPE; 
    v_p_stock Product.p_stock%TYPE; 
    v_price Product.price%TYPE; 
    v_added_date Product.added_date%TYPE; 
    v_minStock Product.minStock%TYPE; 
 
    -- Declare cursor 
    CURSOR product_cursor IS 
        SELECT pid, cid, bid, sid, pname, p_stock, price, added_date, minStock 
        FROM Product; 
 
BEGIN 
    -- Open cursor 
    OPEN product_cursor; 
 
    -- Fetch and display each row from the cursor 
    LOOP 
        FETCH product_cursor INTO v_pid, v_cid, v_bid, v_sid, v_pname, v_p_stock, v_price, v_added_date, v_minStock; 
        EXIT WHEN product_cursor%NOTFOUND; 
         
        -- Display product details (You can replace this with any action you want to perform with the retrieved data) 
        DBMS_OUTPUT.PUT_LINE('Product ID: ' || v_pid); 
        DBMS_OUTPUT.PUT_LINE('Category ID: ' || v_cid); 
        DBMS_OUTPUT.PUT_LINE('Brand ID: ' || v_bid); 
        DBMS_OUTPUT.PUT_LINE('Store ID: ' || v_sid); 
        DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_pname); 
        DBMS_OUTPUT.PUT_LINE('Stock: ' || v_p_stock); 
        DBMS_OUTPUT.PUT_LINE('Price: ' || v_price); 
        DBMS_OUTPUT.PUT_LINE('Added Date: ' || TO_CHAR(v_added_date, 'YYYY-MM-DD')); 
        DBMS_OUTPUT.PUT_LINE('Minimum Stock: ' || v_minStock); 
    END LOOP; 
 
    -- Close cursor 
    CLOSE product_cursor; 
END;


DECLARE 
    v_invoice_id INT := 1; -- Replace with the actual invoice ID 
    v_total_price DECIMAL(10,2) := 0; 
     
    -- Declare cursor to fetch data from Transaction table 
    CURSOR invoice_cursor IS 
        SELECT quantity, price 
        FROM Transaction 
        WHERE id = v_invoice_id; 
BEGIN 
    -- Open the cursor 
    OPEN invoice_cursor; 
     
    -- Loop through each row fetched by the cursor 
    FOR trans_rec IN invoice_cursor 
    LOOP 
        -- Calculate total price for each transaction and accumulate 
        v_total_price := v_total_price + (trans_rec.quantity * trans_rec.price); 
    END LOOP; 
     
    -- Close the cursor 
    CLOSE invoice_cursor; 
     
    -- Display the total price 
    DBMS_OUTPUT.PUT_LINE('Total Price of Invoice ' || v_invoice_id || ': Rupees' || v_total_price); 
END;




  DECLARE 
    CURSOR trans_cursor IS 
        SELECT id, total_amount, payment_method FROM Transaction; 
    v_transaction_id Transaction.id%TYPE; 
    v_total_amount Transaction.total_amount%TYPE; 
    v_payment_method Transaction.payment_method%TYPE; 
BEGIN 
    OPEN trans_cursor; 
    LOOP 
        FETCH trans_cursor INTO v_transaction_id, v_total_amount, v_payment_method; 
        EXIT WHEN trans_cursor%NOTFOUND; 
        -- Process the retrieved data 
        DBMS_OUTPUT.PUT_LINE('Transaction ID: ' || v_transaction_id || ', Total Amount: ' || v_total_amount || ', Payment Method: ' || v_payment_method); 
    END LOOP; 
    CLOSE trans_cursor; 
END;
/

BEGIN 
    INSERT INTO Invoice (invoice_id, product_name, price, quantity, user_id, invoice_date, invoice_status) 
    VALUES (invoice_id_seq.NEXTVAL, 'Product 1', 100.00, 1, 1, SYSDATE, 'Paid'); 
    COMMIT; 
EXCEPTION 
    WHEN DUP_VAL_ON_INDEX THEN 
        -- Handle duplicate value error 
        DBMS_OUTPUT.PUT_LINE('Duplicate invoice ID detected.'); 
    WHEN OTHERS THEN 
        -- Handle other errors 
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM); 
END;


DECLARE 
    CURSOR store_cursor IS 
        SELECT sid, sname, address, phoneNo 
        FROM stores; 
BEGIN 
    FOR store_rec IN store_cursor LOOP 
        DBMS_OUTPUT.PUT_LINE('Store ID: ' || store_rec.sid || ', Store Name: ' || store_rec.sname || ', Address: ' || store_rec.address || ', Phone No: ' || store_rec.phoneNo); 
    END LOOP; 
END; 

CREATE OR REPLACE PROCEDURE update_user_info( 
id IN VARCHAR , new_password IN VARCHAR  
    ) IS 
BEGIN 
  UPDATE Inv_user 
  SET password = new_password 
  WHERE user_id = id; 
END update_user_info; 
 
DECLARE 
  user_id NUMBER := 1; 
  new_password VARCHAR2(20) := '23pass4'; 
BEGIN 
  update_user_info(user_id, new_password); 
  DBMS_OUTPUT.PUT_LINE('User information updated successfully!'); 
END; 
 


CREATE OR REPLACE PROCEDURE add_brand( 
    brand_id IN NUMBER, 
    brand_name IN VARCHAR2 
    
) IS 
BEGIN 
    INSERT INTO brands (bid, bname) 
    VALUES (brand_id, brand_name); 
    COMMIT; 
    DBMS_OUTPUT.PUT_LINE('Brand added successfully.'); 
EXCEPTION 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('Error adding brand: ' || SQLERRM); 
        ROLLBACK; 
END; 