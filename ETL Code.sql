
DELETE FROM subscription WHERE CustomerID IS NULL OR TotalCharges IS NULL;

UPDATE subscription
SET PaperlessBilling = IFF(PaperlessBilling = 'Yes', 1, 0),
    MultiDeviceAccess = IFF(MultiDeviceAccess = 'Yes', 1, 0),
    ParentalControl = IFF(ParentalControl = 'Yes', 1, 0),
    SubtitlesEnabled = IFF(SubtitlesEnabled = 'Yes', 1, 0);

ALTER TABLE subscription ADD COLUMN average_revenue FLOAT;
UPDATE subscription
SET average_revenue = TotalCharges / AccountAge;

ALTER TABLE subscription ADD COLUMN CustomerSegment VARCHAR(10);
UPDATE subscription
SET CustomerSegment = 
CASE
     WHEN average_revenue < 10 THEN 'Low'
     WHEN average_revenue BETWEEN 10 AND 20 THEN 'Medium'
     ELSE 'High'
 END;


CREATE OR REPLACE TABLE clean_subscription_data (
    CustomerID VARCHAR(20),
    AccountAge INT,
    MonthlyCharges FLOAT,
    TotalCharges FLOAT,
    SubscriptionType VARCHAR(20),
    PaymentMethod VARCHAR(20),
    PaperlessBilling BOOLEAN,
    ContentType VARCHAR(20),
    MultiDeviceAccess BOOLEAN,
    DeviceRegistered VARCHAR(10),
    ViewingHoursPerWeek FLOAT,
    AverageViewingDuration FLOAT,
    ContentDownloadsPerMonth INT,
    GenrePreference VARCHAR(20),
    UserRating FLOAT,
    SupportTicketsPerMonth INT,
    Gender VARCHAR(10) ,
    WatchlistSize INT,
    ParentalControl BOOLEAN,
    SubtitlesEnabled BOOLEAN,
    average_revenue FLOAT,
    CustomerSegment VARCHAR(10)
);

INSERT INTO clean_subscription_data
SELECT 
    CustomerID,
    AccountAge,
    MonthlyCharges,
    TotalCharges,
    SubscriptionType,
    PaymentMethod,
    PaperlessBilling,
    ContentType,
    MultiDeviceAccess,
    DeviceRegistered,
    ViewingHoursPerWeek,
    AverageViewingDuration,
    ContentDownloadsPerMonth,
    GenrePreference,
    UserRating,
    SupportTicketsPerMonth,
    Gender,
    WatchlistSize,
    ParentalControl,
    SubtitlesEnabled,
    average_revenue,
    CustomerSegment
FROM 
    subscription;


