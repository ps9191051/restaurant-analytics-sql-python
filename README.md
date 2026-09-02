# Restaurant Analytics | SQL + Python

A restaurant analytics project using **MySQL, Python, Pandas, and Matplotlib**.

## Project Objective

Analyze restaurant order data to answer business questions around:

- Revenue
- Orders
- Average Order Value (AOV)
- Category performance
- Menu-item performance
- Pricing
- Monthly order trends
- Hourly order patterns

## Tech Stack

- MySQL
- Python
- Pandas
- Matplotlib
- Jupyter Notebook

## Dataset Structure

### `order_details`
- `order_details_id`
- `order_id`
- `order_date`
- `order_time`
- `item_id`

### `menu_items`
- `menu_item_id`
- `item_name`
- `category`
- `price`

Relationship:

`order_details.item_id` → `menu_items.menu_item_id`

## Analysis

The project contains 11 Python analysis questions:

1. Total revenue
2. Unique orders
3. Total items sold
4. Average Order Value
5. Revenue by category
6. Most ordered menu item
7. Items sold by category
8. Average menu-item price by category
9. Items priced above average
10. Unique orders by category
11. Revenue by menu item

## Visualizations

The notebook includes:

1. Revenue by Category
2. Unique Orders by Category
3. Top 10 Menu Items by Revenue
4. Monthly Orders Trend
5. Orders by Hour

## Key Results

| Metric | Result |
|---|---:|
| Total Revenue | ₹159,217.90 |
| Unique Orders | 5,370 |
| Matched Items Sold | 12,097 |
| Average Order Value | ~₹29.80 |
| Top Revenue Category | Italian |
| Top Revenue Menu Item | Korean Beef Bowl |

## Data Quality Observation

The raw `order_details` table contains 12,234 rows, while the inner join produces 12,097 matched rows. This means 137 order-detail records do not have a matching menu item in `menu_items`.

This is documented as a data-quality observation.

## How to Run

1. Create/use the `restaurant_db` MySQL database.
2. Make sure the `menu_items` and `order_details` tables are available.
3. Install dependencies:

```bash
pip install pandas matplotlib mysql-connector-python jupyter
```

4. Set your MySQL password as an environment variable.

Windows Command Prompt:

```cmd
set MYSQL_PASSWORD=your_password
```

5. Open `Project_2_Restaurant_Analysis_GitHub.ipynb` in Jupyter and run the cells.

## Security

**Never upload your real MySQL password to GitHub.**

The notebook and Python script use the `MYSQL_PASSWORD` environment variable instead.

## Portfolio Value

This project demonstrates:

- SQL database connectivity
- Data extraction
- Table merging
- Data-quality checking
- Pandas aggregation
- GroupBy analysis
- Business KPI calculation
- Data visualization
- Basic analytical storytelling
