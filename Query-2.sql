/* Find all suppliers who provide products in the ‘Seafood’ category */


SELECT DISTINCT Suppliers.*
FROM Suppliers
JOIN Products ON Suppliers.supplier_id = Products.supplier_id
JOIN Categories ON Products.category_id = Categories.category_id
WHERE Categories.category_name = 'Seafood';