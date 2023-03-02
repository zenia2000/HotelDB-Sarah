use HotelDB;

--1
Select * From Hotel;

--2
Select * From Hotel
Where Address like '%Roskilde%';

--3
Select * From Guest
Where Address like '%Roskilde%';

--4
Select * From Guest
Where Address like '%Roskilde%'
ORDER BY Name;

--5
Select * From Room
Where Types = 'D' and Price <= '200';

--6
Select * From Room
Where Price<400 And (Types = 'D' OR Types ='F');

--7
Select * From Room
Where Price<400 And (Types = 'D' OR Types ='F')
Order By Price;

--8
Select * From Guest
Where Name Like 'G%';

--9
Select Count(Hotel_No)
From Hotel;

--10
Select Count(Hotel_No)
From Hotel
Where Address like '%Roskilde%';

--11
Select AVG(Price)
From Room;

--12
Select AVG(Price)
From Room
Where Types = 'S';

--13
Select AVG(Price)
From Room
Where Types = 'D';

--14
Select AVG(Price)
From Room
Where Hotel_No = '7';

--15
Select SUM(Price)
From room 
Where types = 'D';

--16
Select * From Booking
Where Date_From > '2011-03-01' And Date_To < '2011-03-31';

--17
Select * From Booking
Where Date_From = '2011-02-26' And Hotel_No ='7';

--18
Select * From Booking
Where Date_From = '2011-02-27' And Hotel_No ='7';

--19
Select * From Room
Where Hotel_No = '6';

--20
Select COUNT(Guest_No)
From Booking
Where Hotel_No = '6';