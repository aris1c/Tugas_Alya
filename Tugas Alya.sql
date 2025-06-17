--Soal 4

with tm as(
select "Location",AVG("Tenure_Months")as rata_rata From ecommerce.customers
GROUP BY "Location"),

cs as (
select * from ecommerce.customers)  

select cs."CustomerID",cs."Location",cs."Tenure_Months",tm.rata_rata from cs
left join tm on cs."Location" = tm."Location"
where cs."Tenure_Months" > tm.rata_rata

