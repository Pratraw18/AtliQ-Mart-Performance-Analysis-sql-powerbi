--------------------- AD-HOC REQUESTS----------------


-- Business Request 1 : Products with base price greater than 500 under BOGOF
/*
Provide a list of products with a base price greater than 500 and that are featured in promo type of 'BOGOF' (Buy One Get One Free).
This information will help us identify high-value products that are currently being heavily discounted, which can be useful for evaluating
our pricing and promotion strategies.
*/
SELECT DISTINCT product_code, product_name, category,
base_price, promo_type FROM vw_promo_metrics
WHERE promo_type = 'BOGOF'
AND base_price > 500
ORDER BY base_price DESC;


-- Business Request 2 :  Number of stores in each city
/*
Generate a report that provides an overview of the number of stores in each city. The results will be sorted in descending order of store counts,
allowing us to identify the cities with the highest store presence.The report includes two essential fields: city and store count, which will assist
in optimizing our retail operations.
*/

SELECT city, COUNT(DISTINCT store_id) AS store_count
FROM dim_stores
GROUP BY city
ORDER BY store_count DESC, city;


-- Business Request 3 : Campaign wise revenue before and after promotion
/*
Generate a report that displays each campaign along with the total revenue generated before and after the campaign?
The report includes three key fields: campaign_name, total_revenue(before_promotion), total_revenue(after_promotion).
This report should help in evaluating the financial impact of our promotional campaigns.(Display the values in millions)
*/
SELECT 
    campaign_name,
    ROUND(SUM(revenue_before) / 1000000.0,2) AS revenue_before_promotion_in_millions,
    ROUND(SUM(revenue_after) / 1000000.0,2) AS revenue_after_promotion_in_millions,
    ROUND(SUM(incremental_revenue) / 1000000.0, 2) AS incremental_revenue_millions
FROM vw_promo_metrics
GROUP BY campaign_name ORDER BY campaign_name;


-- Business Request 4 : Category-wise ISU% during Diwali campaign with ranking
/*
Produce a report that calculates the Incremental Sold Quantity (ISU%) for each category during the Diwali campaign.
Additionally, provide rankings for the categories based on their ISU%. The report will include three key fields: category, isu %, and rank order.
This information will assist in assessing the category-wise success and impact of the Diwali campaign on incremental sales.
*/
SELECT
    category,
    SUM(quantity_before) AS total_units_before,
    SUM(quantity_after) AS total_units_after,
    SUM(incremental_units) AS total_incremental_units,
    ROUND(
        (SUM(incremental_units) * 100.0) / NULLIF(SUM(quantity_before), 0),
        2
    ) AS ISU_percent,
    RANK() OVER (
        ORDER BY
        (SUM(incremental_units) * 100.0) / NULLIF(SUM(quantity_before), 0) DESC
    ) AS category_rank
FROM vw_promo_metrics
WHERE campaign_name = 'Diwali'
GROUP BY category
ORDER BY category_rank;


-- Business Request 5 : Top 5 products by Incremental Revenue Percentage across campaigns
/*
Create a report featuring the Top 5 products, ranked by Incremental Revenue Percentage (IR%), across all campaigns.
The report will provide essential information including product name, category, and ir%. This analysis helps identify
the most successful products in terms of incremental revenue across our campaigns, assisting in product optimization.
*/
SELECT TOP 5
    product_name,
    category,
    ROUND(SUM(revenue_before), 2) AS total_revenue_before,
    ROUND(SUM(revenue_after), 2) AS total_revenue_after,
    ROUND(SUM(incremental_revenue), 2) AS total_incremental_revenue,
    ROUND(
        (SUM(incremental_revenue) * 100.0) / NULLIF(SUM(revenue_before), 0),
        2
    ) AS IR_percent
FROM vw_promo_metrics
GROUP BY product_name, category
ORDER BY IR_percent DESC;
