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



