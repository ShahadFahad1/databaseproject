


CREATE VIEW vBookStatus as (
SELECT b1.ISBN, b1.NAMEB, b2.ISBNA , b1.STATEB
FROM Book b1 JOIN Author  b2 ON b1.isbn=b2.isbna JOIN book b1 
ON b1.isbn=b1.isbn
WHERE b1.STATEB='Available');
