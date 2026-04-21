-- Neighbourhood Analysis
-- =========================================
-- Purpose: Analyze listing performance across neighbourhoods
-- Dataset: Cleaned listings table
-- Used in: Power BI - Overview page
-- Description:
-- This query aggregates listings by neighbourhood and computes key metrics
-- such as average price, availability (proxy for occupancy), and ratings
-- to identify geographic patterns in the market.
-- =========================================

CREATE VIEW neighbourhood_analysis AS
SELECT 
    neighbourhood_cleansed,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(occupancy_rate), 2) AS avg_occupancy,
    ROUND(AVG(review_scores_rating), 2) AS avg_rating
FROM listings
GROUP BY neighbourhood_cleansed
