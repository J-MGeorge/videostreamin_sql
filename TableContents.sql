INSERT INTO CUSTOMERS (ID, User_Name, Email, Address, Card_Expiration)
VALUES (3669, 'Jane Doe', 'janedoe@gmail.com', '123 Mystery Ave', '2027-12-01'),
		(9658, 'John Doe', 'johndoe@gmail.com', '736 Kraken Rd', '2026-09-01'),
        (3465, 'Amy Kitt', 'amykitt@gmail.com', '378 Dance St', '2028-04-01');

INSERT INTO VIDEO_ITEM (Title, VType, ETitle, RDate, Duration, Genre)
VALUES ('Arcane', 'Episode', 'Welcome to the Playground', '2021-11-6', '43m','Action-Adventure'),
		('Legally Blonde', 'Movie', '', '2001-07-13', '1hr 36m','Comedy, Romance'),
        ('Addams Family Values', 'Movie','', '1993-11-19', '1h 43m','Comedy');
        
INSERT INTO SUBSCRIPTIONS (Payment_Rate, Subscription_Type)
VALUES ('$4.99/month', 'Basic'),
		('$7.99/month', 'Advanced'),
        ('$14.99/month', 'Unlimited');
        
INSERT INTO USER_SUB (Start_Date, End_Date, Subscription_Type, User_ID, User_Name, Email)
VALUES ('2020-09-23', '2025-08-01', 'Advanced', 3669, 'Jane Doe', 'janedoe@gmail.com'),
		('2024-01-20', null, 'Basic',9658, 'John Doe', 'johndoe@gmail.com'),
        ('2025-07-30', null, 'Advanced',3465, 'Amy Kitt', 'amykitt@gmail.com');