-- Host Performance
-- =========================================
-- Purpose: Compare performance between superhosts and non-superhosts
-- Dataset: Cleaned listings table
-- Used in: Power BI - Host Performance page
-- Description:
-- This query evaluates differences in pricing, occupancy, and ratings
-- between superhosts and regular hosts to assess their impact on listing performance.
-- =========================================

CREATE VIEW host_analysis AS
SELECT 
    host_is_superhost,
    COUNT(*) AS listings,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(occupancy_rate), 2) AS avg_occupancy,
    ROUND(AVG(review_scores_rating), 2) AS avg_rating
FROM listings
GROUP BY host_is_superhost
