create database OvqatDB

use OvqatDB

CREATE TABLE Taomlar (
    TaomID INT IDENTITY(1,1) PRIMARY KEY,
    TaomNomi NVARCHAR(100),
    Kategoriya NVARCHAR(50),
    Narx DECIMAL(10,2),
    Kaloriya INT
);
CREATE TABLE Mijozlar (
    MijozID INT IDENTITY(1,1) PRIMARY KEY,
    FIO NVARCHAR(100),
    Shahar NVARCHAR(100),
    Yosh INT
);
CREATE TABLE Buyurtmalar (
    BuyurtmaID INT IDENTITY(1,1) PRIMARY KEY,
    MijozID INT,
    TaomID INT,
    Miqdor INT,
    Sana DATE
);

INSERT INTO Taomlar (TaomNomi, Kategoriya, Narx, Kaloriya) VALUES
('Osh', 'Milliy', 30000, 450),
('Lagʻmon', 'Milliy', 25000, 400),
('Burger', 'FastFood', 35000, 550),
('Pizza', 'FastFood', 45000, 600),
('Somsa', 'Milliy', 10000, 250),
('Shashlik', 'Go‘shtli', 28000, 500),
('Manti', 'Milliy', 22000, 420);

INSERT INTO Mijozlar (FIO, Shahar, Yosh) VALUES
('Ali Karimov', 'Tashkent', 25),
('Zarina Omonova', 'Samarkand', 32),
('Rustam Bekov', 'Bukhara', 41),
('Dilshod Aliyev', 'Andijan', 29),
('Malika Saidova', 'Namangan', 23);

INSERT INTO Buyurtmalar (MijozID, TaomID, Miqdor, Sana) VALUES
(1, 1, 2, '2025-10-01'),
(2, 3, 1, '2025-10-02'),
(3, 4, 2, '2025-10-03'),
(4, 2, 3, '2025-10-05'),
(5, 5, 5, '2025-10-07'),
(1, 6, 1, '2025-10-10'),
(2, 7, 2, '2025-10-11'),
(3, 1, 1, '2025-10-12');



select *from Taomlar 

select FIO, Yosh from Mijozlar 
where Yosh >= 25

select * from Taomlar 

select TaomID, Narx, Kaloriya from Taomlar 
where Narx BETWEEN 25000 and 40000 and Kaloriya >= 400 
Order by Narx ASC;

select * from Buyurtmalar 

select Count(*) as Jami_buyurtmalar 
from Taomlar 

SELECT 
    T.TaomNomi,
    SUM(B.Miqdor) AS JamiBuyurtma
FROM Buyurtmalar B
JOIN Taomlar T ON B.TaomID = T.TaomID
GROUP BY T.TaomNomi;

select * from Taomlar 

UPDATE Taomlar 
SET Narx = Narx *0.9 
where TaomID in (3,4)

select * from Taomlar 

select *from Buyurtmalar

SELECT 
    M.FIO,
    SUM(B.Miqdor) AS JamiBuyurtma
FROM Buyurtmalar B
JOIN Mijozlar M ON B.MijozID = M.MijozID
GROUP BY M.FIO
ORDER BY JamiBuyurtma DESC;


select * from Taomlar 








