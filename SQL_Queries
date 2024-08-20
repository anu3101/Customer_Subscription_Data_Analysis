SELECT * FROM clean_subscription_data
LIMIT 20;

SELECT COUNT(*) AS TotalCustomers
FROM clean_subscription_data;

SELECT ROUND(SUM(TotalCharges),0) AS TotalRevenue
FROM clean_subscription_data;

SELECT CustomerSegment, AVG(MonthlyCharges) AS AvgMonthlyCharges
FROM clean_subscription_data
GROUP BY CustomerSegment;


SELECT SubscriptionType, COUNT(*) AS NumCustomers
FROM clean_subscription_data
GROUP BY SubscriptionType;


SELECT SUM(SupportTicketsPerMonth) AS TotalSupportTickets
FROM clean_subscription_data;

SELECT DeviceRegistered, COUNT(*) AS DeviceCount
FROM clean_subscription_data
GROUP BY DeviceRegistered
ORDER BY DeviceCount DESC;


SELECT SubscriptionType, AVG(VIEWINGHOURSPERWEEK) AS Avg_Time
FROM clean_subscription_data
GROUP BY SubscriptionType;


SELECT Gender, COUNT(*) AS Count
FROM clean_subscription_data
WHERE TotalCharges > 100
GROUP BY Gender;

SELECT GenrePreference, COUNT(*) AS GenreCount
FROM clean_subscription_data
GROUP BY GenrePreference
ORDER BY GenreCount DESC
LIMIT 5;

SELECT 
    CASE 
        WHEN AccountAge <= 12 THEN '0-12 months'
        WHEN AccountAge <= 24 THEN '13-24 months'
        WHEN AccountAge <= 36 THEN '25-36 months'
        ELSE '37+ months'
    END AS AccountAgeGroup, 
    COUNT(*) AS Count
FROM clean_subscription_data
GROUP BY AccountAgeGroup
ORDER BY AccountAgeGroup;

SELECT CustomerSegment, COUNT(*) AS PotentialChurnCount
FROM clean_subscription_data
WHERE CustomerSegment = 'Low' AND VIEWINGHOURSPERWEEK<5
GROUP BY CustomerSegment;



SELECT CustomerSegment, SubscriptionType, AVG(UserRating) AS AvgUserRating
FROM clean_subscription_data
GROUP BY CustomerSegment, SubscriptionType;


SELECT CustomerSegment, AVG(MonthlyCharges) AS AvgMonthlyCharges
FROM clean_subscription_data
GROUP BY CustomerSegment
ORDER BY AvgMonthlyCharges DESC;


SELECT PaymentMethod, COUNT(*) AS NumCustomers
FROM clean_subscription_data
GROUP BY PaymentMethod
ORDER BY NumCustomers DESC;

