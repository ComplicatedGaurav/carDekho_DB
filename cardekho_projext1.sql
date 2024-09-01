create database cars;
use cars;
select*from cardekho;


-- Read data-- 
-- Total cars : get the count of total cars record
select count(*) from cardekho ;  --  cout:7927

-- the manager asked to empoyee how many cars is avaliable in year 2023
select count(*) from cardekho where year="2023";  --  ANS:

-- the manager asked to empoyee how many cars is avaliable in year 2020, 2021, 2022....
select count(*) from cardekho where year in (2020,2021,2022) group by year ;--   Ans:88  Ans:7,7,74;

-- clint asked to print the total of all cars by the year . i don't see all the details....
select year ,count(*) from cardekho group by year;

-- clint asked to car dealer agent  how many diesel cars will there be in 2020
select count(*) from cardekho where fuel="diesel" and year=2020; -- Ans:20

-- clint requested a car dealer agent how many petrol cars will there be in 2020;
select count(*) from cardekho where fuel="petrol" and year=2020;   -- Ans;51
  
-- the manager told the employee to  give a print all the fuel cars (petrol,diesel,and CNG_)come by all year
select year,count(*) from cardekho where fuel="petrol" group by year;
select year,count(*) from cardekho where fuel="diesel" group by year;
select year,count(*) from cardekho where fuel="cng" group by year;


-- manager said there were more  than 100 cars in a given year, which year had more than 100 cars

select year,count(*) from cardekho  group by year having count(*)>100;

-- the manager said to the employee all cars cout details between 2015 and 2023;
select count(*) from cardekho where year  between 2015 and 2023;  -- Ans;4124
 
 
 -- the manager said to the employee all cars details between 2015 to 2023 we need complete list;
select*from cardekho where year between 2015 and 2023;
