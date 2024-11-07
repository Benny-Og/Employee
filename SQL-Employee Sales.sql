{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 use EmployeeSales;\
\
rename table Employee.Sales_employee_sales to employee_sales;\
\
select * from employee_sales;\
\
\
\
##THE AVERAGE SALE AMOUNT\
select round(avg(cast(SaleAmount as decimal)), 2) as Average_Sale_Amount\
from employee_sales;\
\
##THE TOTAL NUMBER OF SALES\
select round(sum(SaleAmount), 2) as Total_Sales from employee_sales;\
\
##THE TOP 10 SELLING EMPLOYEES\
select Emp_ID, Emp_Name, round(sum(SaleAmount), 2) as Total_Emp_Sale from employee_sales \
group by Emp_ID, Emp_Name order by Total_Emp_Sale desc;\
\
\
\
##THE TOTAL NUMBER OF SALES MADE IN 2023\
select count(*) as 2023_Total_Sales\
from employee_sales\
where year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2023;\
\
##THE NUMBER OF SALES MADE BY EMPLOYEES IN 2023\
select Emp_ID, Emp_Name, count(*) as 2023_Sale_Count\
from employee_sales\
where year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2023\
group by Emp_ID, Emp_Name order by 2023_Sale_Count desc;\
\
##THE TOTAL AMOUNT SOLD IN 2023\
select round(sum(cast(SaleAmount as decimal)), 2) as 2023_Sales\
from employee_sales\
where year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2023;\
\
\
\
##THE TOTAL NUMBER OF SALES MADE IN 2024\
select count(*) as 2024_Total_Sales\
from employee_sales\
where year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2024;\
\
##THE NUMBER OF SALES MADE BY EMPLOYEES IN 2024\
select Emp_ID, Emp_Name, count(*) as 2024_Sale_Count\
from employee_sales\
where year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2024\
group by Emp_ID, Emp_Name order by 2024_Sale_Count desc;\
\
##THE TOTAL AMOUNT SOLD IN 2024\
select round(sum(cast(SaleAmount as decimal)), 2) as 2024_Sales\
from employee_sales\
where year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2024;\
\
\
\
##THE TOTAL AMOUNT JOHN SOLD IN 2023\
select round(sum(cast(SaleAmount as decimal)), 2) as John_Doe_2023 from employee_sales\
where Emp_Name = 'John Doe' and year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2023;\
\
##THE TOTAL AMOUNT GRACE SOLD IN 2024\
select round(sum(cast(SaleAmount as decimal)), 2) as Grace_Pink_2024 from employee_sales\
where Emp_Name = 'Grace Pink' and year(str_to_date(SaleDate, '%m/%d/%Y %H:%i')) = 2024;}