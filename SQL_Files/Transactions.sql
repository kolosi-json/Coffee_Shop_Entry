CREATE TABLE Transactions (
	  transaction_id INT AUTO_INCREMENT NOT NULL,
  	customer_id INT,
  	item_id INT,
  
 	  CONSTRAINT fk_customer
  	FOREIGN KEY (customer_id)
  	REFERENCES Customers(customer_id),
  
	  CONSTRAINT fk_item
  	FOREIGN KEY (item_id)
  	REFERENCES Menu(item_id);
