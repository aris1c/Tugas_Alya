create table PUBLIC.Aris_CandraDs27 (
ID varchar primary key,
Nama varchar (100),
Umur INT,
Tanggal_Lahir DATE
);

insert into public.aris_candrads27 (ID,nama,Umur,tanggal_lahir) values
('12345','Aris Candra','28','1997-05-31'),
('72734','Alya Devi Anjani','27','1997-12-14'),
('23254','Tomy Havis','25','2000-01-21');

select * from public.Aris_CandraDS27



select * from restaurant_aryac_ds47 rad


--Soal 4

with tm as(
select "Location",AVG("Tenure_Months")as rata_rata From ecommerce.customers
GROUP BY "Location"),

cs as (
select * from ecommerce.customers)  

select cs."CustomerID",cs."Location",cs."Tenure_Months",tm.rata_rata from cs
left join tm on cs."Location" = tm."Location"
where cs."Tenure_Months" > tm.rata_rata


SELECT user_id,nama_lengkap,email,kota_asal,salary FROM alya_ds50;
select * from alya_ds50
---kita upadate ?

--Soal 1 
select distinct "Product_Description"  from online_sales oe
where cast("Transaction_Date" as TEXT) like '2019-07%'

--Soal 2
select "Product_Category", sum_Quantity from (select "Product_Category",sum ("Quantity")as sum_Quantity
from ecommerce.online_sales 
group by ("Product_Category")
)
where sum_Quantity > 20000

---CTE (Common Table Expression)
with Jumlah_Quantity as (
select "Product_Category",sum ("Quantity")as sum_quantity
from ecommerce.online_sales 
group by ("Product_Category")
)

select "Product_Category", sum_quantity from Jumlah_Quantity
where sum_quantity > 20000


--Soal 3
select avg("Quantity"*"Avg_Price")as gmv 
from ecommerce.online_sales
where "Product_Category" = 'Bags'

--Soal 4

with tm as(
select "Location",avg ("Tenure_Months")as rata_rata from ecommerce.customers
group by "Location"),

ct as 
(select * from ecommerce.customers)

select ct."CustomerID",ct."Location" from tm 
left join ct on ct."Location" = tm."Location"
where ct."Tenure_Months" > tm.rata_rata


--Soal 5
  select distinct "Transaction_Date", "Location"
  from (select * from ecommerce.online_sales t1
  join ecommerce.customers t2
  on t1."CustomerID" = t2."CustomerID")
  where "Location" LIKE 'New%'


--Commit Alya
select * from ecommerce.online_sales
where "Transaction_Date" like '2019-07%'

--Commit Aris
select * from ecommerce.customers












