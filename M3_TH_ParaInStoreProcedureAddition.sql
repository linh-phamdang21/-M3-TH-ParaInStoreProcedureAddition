delimiter //
create procedure getCusByID (IN cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end//

call getCusByID(175);
call getCusByID(103);
select * from customers;

delimiter //
create procedure getCustomerCountByCity(
IN in_city varchar(50),
OUT total int
)
begin
select count(customerNumber)
into total
from customers
where city = in_city;
end//

call getCustomerCountByCity('Paris',@total);
select @total;

delimiter //
create procedure setCounter(
INOUT counter int,
IN inc int
)
begin
set counter = counter + inc;
end//

set @counter = 1;
call setCounter(@counter,1);
call setCounter(@counter,1);
call setCounter(@counter,5);
select @counter;

