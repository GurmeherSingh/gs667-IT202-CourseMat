CREATE TABLE items (
 itemID           INT(11)        NOT NULL,
 itemName         VARCHAR(255)   NOT NULL,
 categoryID       INT(11)        NOT NULL,
 listPrice        DECIMAL(10,2)  NOT NULL,
 PRIMARY KEY (itemID)
);

INSERT INTO items
(itemID, itemName, categoryID, listPrice)
VALUES
(1001, 'Fender Stratocaster', 100, 699.00);

SELECT * from items;

SELECT * FROM items JOIN categories ON items.categoryID = categories.categoryID;

-- Optional
SELECT * from items;