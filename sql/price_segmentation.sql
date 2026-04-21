-- Price Segmentation
-- =========================================
-- Purpose: Segment listings by price range and analyze performance
-- Dataset: Cleaned listings table
-- Used in: Power BI - Price Segmentation page
-- Description:
-- This query groups listings into Low, Mid, and High price segments
-- and calculates key metrics such as average price, availability,
-- number of reviews, and rating.
-- =========================================

CREATE VIEW price_segment_analysis AS
SELECT 
    CASE 
        WHEN price < 150 THEN 'Low'
        WHEN price BETWEEN 150 AND 300 THEN 'Mid'
        ELSE 'High'
    END AS price_segment,
    
    COUNT(*) AS listings,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(availability_365), 2) AS avg_availability,
    ROUND(AVG(number_of_reviews), 2) AS avg_reviews,
    ROUND(AVG(review_scores_rating), 2) AS avg_rating

FROM listings
GROUP BY price_segment
ORDER BY avg_price
