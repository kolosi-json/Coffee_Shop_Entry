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

INSERT INTO Transactions (transaction_id, customer_id, item_id)
VALUES (1001, 102, 2),
	(1002, 103, 2),
	(1003, 101, 3),
	(1004, 103, 1)

	--Code For the Total Amount of Purchase Each Item--

	--The client noted to keep track on her transactions in order for me to notify her regarding with the best selling items.-- 
	-- I recommended the client to prioritize stocking ingredients which are the recipes for the most sold item.--

SELECT Menu.item_name, COUNT(Menu.item_name) AS 'Number of Items Bought Each Item'
FROM Transactions
INNER JOIN Menu ON Menu.item_id = Transactions.item_id
GROUP BY Menu.item_name
ORDER BY Menu.item_name DESC
