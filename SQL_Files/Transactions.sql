CREATE TABLE Transactions (
	  	transaction_id INT AUTO_INCREMENT NOT NULL,
  		customer_id INT,
  		item_id INT,
  
 	  CONSTRAINT fk_customer
  	FOREIGN KEY (customer_id)
  	REFERENCES Customers(customer_id),
  
	  CONSTRAINT fk_item
  	FOREIGN KEY (item_id)
  	REFERENCES Menu(item_id)
	);

INSERT INTO Transactions

--Code For the Total Amount of Purchase Each Item--

SELECT Menu.item_name, COUNT(Menu.item_name) AS 'Number of Items Bought'
FROM Transactions
INNER JOIN Menu ON Menu.item_id = Transactions.item_id
GROUP BY Menu.item_name
ORDER BY Menu.item_name DESC
