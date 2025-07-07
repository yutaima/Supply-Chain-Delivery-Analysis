-- ========================================
-- On-Time Delivery Rate by Customer Rating
-- ========================================
SELECT
    Customer_rating,
    COUNT(*) AS Total_of_Shipment,
    SUM(CASE WHEN Reached_on_Time_y_N = 0 THEN 1 ELSE 0 END) AS Number_of_On_Time,
    FORMAT(
        1.0 * SUM(CASE WHEN Reached_on_Time_y_N = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        'N2'
    ) + '%' AS On_Time_Rate
FROM dbo.Train
GROUP BY Customer_rating
ORDER BY Customer_rating DESC;


-- =======================================
-- On-Time Delivery Rate by Warehouse Block
-- =======================================
SELECT
    Warehouse_block,
    COUNT(*) AS Total_of_Shipment,
    SUM(CASE WHEN Reached_on_Time_y_N = 0 THEN 1 ELSE 0 END) AS Number_of_On_Time,
    FORMAT(
        1.0 * SUM(CASE WHEN Reached_on_Time_y_N = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        'N2'
    ) + '%' AS On_Time_Rate
FROM dbo.Train
GROUP BY Warehouse_block
ORDER BY Warehouse_block;


-- ===========================================
-- On-Time Delivery Rate by Product Importance
-- ===========================================
SELECT
    Product_importance,
    COUNT(*) AS Total_of_Shipment,
    SUM(CASE WHEN Reached_on_Time_y_N = 0 THEN 1 ELSE 0 END) AS Number_of_On_Time,
    FORMAT(
        1.0 * SUM(CASE WHEN Reached_on_Time_y_N = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        'N2'
    ) + '%' AS On_Time_Rate
FROM dbo.Train
GROUP BY Product_importance
ORDER BY Product_importance;
