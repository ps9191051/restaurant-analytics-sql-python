USE restaurant_db;

-- Q1. Total Revenue

SELECT
    SUM(m.price) AS total_revenue
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id;


-- Q2. Number of Unique Orders

SELECT
    COUNT(DISTINCT order_id) AS unique_orders
FROM order_details;


-- Q3. Total Items Sold

SELECT
    COUNT(*) AS total_items_sold
FROM order_details;


-- Q4. Average Order Value (AOV)

SELECT
    SUM(m.price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(m.price) / COUNT(DISTINCT o.order_id) AS average_order_value
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id;


-- Q5. Revenue by Category

SELECT
    m.category,
    SUM(m.price) AS total_revenue
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id
GROUP BY m.category
ORDER BY total_revenue DESC;


-- Q6. Most Ordered Menu Item

SELECT
    m.item_name,
    COUNT(o.item_id) AS times_ordered
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id
GROUP BY m.item_name
ORDER BY times_ordered DESC;


-- Q7. Items Sold by Category

SELECT
    m.category,
    COUNT(o.item_id) AS items_sold
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id
GROUP BY m.category
ORDER BY items_sold DESC;


-- Q8. Average Menu Item Price by Category

SELECT
    category,
    AVG(price) AS average_item_price
FROM menu_items
GROUP BY category
ORDER BY average_item_price DESC;


-- Q9. Menu Items Priced Above the Overall Average

SELECT
    item_name,
    price
FROM menu_items
WHERE price > (
    SELECT AVG(price)
    FROM menu_items
)
ORDER BY price DESC;


-- Q10. Unique Orders by Category

SELECT
    m.category,
    COUNT(DISTINCT o.order_id) AS unique_orders
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id
GROUP BY m.category
ORDER BY unique_orders DESC;


-- Q11. Revenue by Menu Item

SELECT
    m.item_name,
    COUNT(o.item_id) * m.price AS total_revenue
FROM order_details AS o
JOIN menu_items AS m
    ON m.menu_item_id = o.item_id
GROUP BY m.item_name, m.price
ORDER BY total_revenue DESC;
