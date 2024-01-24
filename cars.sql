/* SECOND HAND CAR DEALER PROJECT

  Steps Covered✅
1. Read Data
2. Where 
3. Having
4. Group by year  */

create schema cars;
use cars;

/* READ DATA */
select * from `car dekho`;

/* Total cars to get a count of total records */
select count(*) from `car dekho`; #7927

/* The manager asked how many cars will be available in 2023*/
select count(*) from `car dekho` where year=2023; #6

/* The manager asked how many cars will be available in 2020,2021,2022*/
select count(*) from `car dekho` where year= 2020; #74
select count(*) from `car dekho` where year= 2021; #7
select count(*) from `car dekho` where year= 2022; #7
select count(*) from `car dekho` where year in (2020,2021,2022) group by year;

/*Client asked me to print the total of all the cars by year. I don't see all the details*/
select year, count(*) from `car dekho` group by year;

/*Client asked car dealer how many diesel cars will be there in 2020*/
select count(*) from `car dekho` where fuel ='Diesel' and year=2020; #20

/*Client asked how many petrol cars are there in 2020*/
select count(*) from `car dekho` where fuel ='Petrol' and year=2020; #51

/*The manager asked to print all the fuel cars(Petrol, Diesel, CNG) come by all year*/
select year,count(*) from `car dekho` where fuel='Petrol' group by year; 
select year,count(*) from `car dekho` where fuel='Diesel' group by year; 
select year,count(*) from `car dekho` where fuel='CNG' group by year; 

/*Manager said there were more than 100 cars in one of the year, which year had more than 100 cars*/
select year,count(*) from `car dekho` group by year having count(*)>100;

/*The manager asked all cars count details between 2015 and 2023, he needs the complete list*/
select count(*) from `car dekho` where year between 2015 and 2023; #4124

/*The manager asked for complete details of all the the cars between 2015 and 2023 */
select * from `car dekho` where year between 2015 and 2023;
