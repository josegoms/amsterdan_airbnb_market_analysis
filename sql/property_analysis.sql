-- Property Analysis
-- =========================================
-- Purpose: Evaluate performance by property (room) type
-- Dataset: Cleaned listings table
-- Used in: Power BI - Property Strategy page
-- Description:
-- This query compares different property types (entire home, private room, etc.)
-- in terms of pricing and occupancy to identify strategic investment opportunities.
-- =========================================

CREATE VIEW property_analysis AS
SELECT 
    room_type,
    COUNT(*) AS listings,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(occupancy_rate), 2) AS avg_occupancy
FROM listings
GROUP BY room_type
