CREATE TABLE CUSTOMERS(
	ID int not null,
    User_Name varchar(20) not null,
    Email varchar(20) not null unique,
    Address varchar(40) not null,
    Card_Expiration date not null,
    Primary Key(ID, FullName, Email)
);
CREATE TABLE SUBSCRIPTIONS(
	Payment_Rate int not null,
    Subscription_Type varchar(10) not null,
    Primary Key(Payment_Rate)
);
CREATE TABLE VIDEO_ITEM(
	Title varchar (10) not null unique,
    VType varchar(8) not null,
    RDate date not null,
    Duration int not null,
    Genre varchar(15) not null,
    Primary Key(Title)
);
CREATE TABLE TV_SHOW(
	Season_Number int(2) not null,
    Show_Title varchar(10) not null,
    Episodes int not null,
    Foreign Key(Show_Title) references VIDEO_ITEM(Title)
);
CREATE TABLE EPISODES(
    Episode_Number int not null,
    Season int not null,
    Show_Title varchar(10) not null,
    Foreign Key(Show_Title) references TV_SHOW(Show_Title)
);
CREATE TABLE MOVIE(
	Movie_Title varchar(10) not null,
    Foreign Key(Movie_Title) references VIDEO_ITEM(Title)
);
CREATE TABLE USER_SUB(
	Start_Date date not null,
    End_Date date,
    Subscription_Type varchar(10) not null,
    User_ID int not null,
    User_Name varchar(20) not null,
    Email varchar(20) not null unique,
    Foreign Key(User_ID, User_Name, Email) references CUSTOMERS(ID, User_Name, Email)
);
CREATE TABLE PAYS_FOR(
	Start_Date date not null,
    End_Date date,
    Rate int not null,
    Foreign Key(Rate) references SUBSCRIPTIONS(Payment_Rate)
);
CREATE TABLE VIDEO_ITEM1(
	Title varchar (10) not null unique,
    Genre_ID varchar(15) not null,
    Primary Key(Title),
    Foreign Key(Title) references video_item(Title)
);
CREATE TABLE Movie_Genre(
	Movie_Title varchar (10) not null unique,
    Genre_ID varchar(15) not null,
    Primary Key(Movie_Title),
    Foreign Key(Movie_Title) references Movie(Movie_Title)
);
CREATE TABLE TV_Show_Genre(
	Show_Title varchar (10) not null unique,
    Genre_ID varchar(15) not null,
    Primary Key(Show_Title),
    Foreign Key(Show_Title) references TV_Show(Show_Title)
);

CREATE TABLE EPISODES_Sub(
    Show_Title varchar(10) not null,
    Subscription varchar(10) not null,
    Primary Key(Show_Title),
    Foreign Key(Show_Title) references TV_SHOW(Show_Title),
    Foreign Key(subscription) references Subscriptions(subscription_type)
);
CREATE TABLE User_Info(
    User_ID int not null,
    User_Name varchar(20) not null,
    email varchar(20) not null,
    Primary Key(User_ID),
    Foreign Key(User_ID) references user_sub(User_ID)
);

CREATE VIEW Item_Sub 
AS SELECT DISTINCT Subscription_Type, Payment_Rate, v.Title
FROM subscriptions s JOIN tv_show t ON Subscription_Type = t.subscription 
JOIN movie m ON Subscription_Type = m.subscription
JOIN video_item v ON v.title = show_title OR v.title = movie_title;
