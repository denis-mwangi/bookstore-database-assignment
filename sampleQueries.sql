-- ======== SAMPLE QUERIES TESTED FOR THIS DATABASE ========

-- List All Publishers and Their Contact Information
SELECT publisherId, publisherName, contact 
FROM publisher;

-- Show All Books with Their Publisher and Language

SELECT b.bookId, b.bookTitle, b.isbnNumber, b.publicationYear, 
       p.publisherName, bl.langaugeName
FROM book b
JOIN publisher p ON b.publisherId = p.publisherId
JOIN bookLanguage bl ON b.languageId = bl.languageId;

-- Joining Order History for Detailed Order Tracking

SELECT co.orderId, co.orderDate, co.totalAmount, 
       oh.statusDate, oh.notes, os.orderDescription
FROM custOrder co
JOIN orderHistory oh ON co.orderId = oh.orderId
JOIN orderStatus os ON oh.orderStatusId = os.orderStatusId
ORDER BY co.orderId, oh.statusDate;

-- Authors and the Number of Books They Have Authored

SELECT a.firstName, a.secondName, COUNT(ba.bookId) AS booksAuthored
FROM authors a
JOIN bookAuthor ba ON a.authorId = ba.authorId
GROUP BY a.authorId
ORDER BY booksAuthored DESC;

-- Average Book Price by Publisher

SELECT p.publisherName, AVG(b.price) AS avgPrice
FROM publisher p
JOIN book b ON p.publisherId = b.publisherId
GROUP BY p.publisherName;

-- Revenue Generated per Book Title (by Summing Order Line Totals)

SELECT b.bookTitle, SUM(ol.lineTotal) AS totalRevenue
FROM book b
JOIN orderLine ol ON b.bookId = ol.bookId
GROUP BY b.bookTitle
ORDER BY totalRevenue DESC;

-- Total Orders Placed by Each Customer

SELECT c.customerName, COUNT(co.orderId) AS totalOrders
FROM customer c
JOIN custOrder co ON c.customerId = co.customerId
GROUP BY c.customerName;

-- Total Number of Books Published per Publisher
SELECT p.publisherName, COUNT(b.bookId) AS totalBooks
FROM publisher p
LEFT JOIN book b ON p.publisherId = b.publisherId
GROUP BY p.publisherName;