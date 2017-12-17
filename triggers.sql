-- LAB 11 funcoes e triggers

-- a)

create or replace function total_balance(c varchar(255))
	returns decimal(20,2) as $$
	declare credit decimal(20,2);
	declare debt decimal(20,2);

begin

select sum(balance) into credit
from account natural join depositor
where customer_name = c;

if credit is null then credit := 0; end if;


select sum(amount) into debt
from loan natural join borrower
where customer_name = c;
if debt is null then debt := 0; end if;
return credit - debt;
end; $$ language plpgsql;

PARA TESTAR:

select total_balance('cook');


-- b)


create or replace function total_balance(agencia1 varchar(255),agencia2 varchar(255))
	returns decimal(20,2) as $$
	declare saldoM1 decimal(20,2);
	declare saldoM2 decimal(20,2);

begin

select avg(balance) into saldoM1
from account
where branch_name = agencia1;

if saldoM1 is null then saldoM1 := 0; end if;

select avg(balance) into saldoM2
from account
where branch_name = agencia2;

if saldoM2 is null then saldoM2 := 0; end if;

return saldoM1 - saldoM2;
end; $$ language plpgsql;

PARA TESTAR:

select total_balance('Downtown','Uptown');






-- c


SELECT branch_name from account group by account having avg(balance) >
ALL(SELECT avg(balance) from account group by account having avg(balance))



-- d





-- 2 a)

drop Trigger if exists update_load_trigger on loan;
create on replace function update_load() returns Trigger as $$
begin
if new.amount <= 0 then
	update branch set assets = assets + new.amount *(-1)
	where b.branch_name = new.branch_name;
	delete from borrower where loan_number = new.loan_number;
	delete from loan where loan_number = new.loan_number;
end if;
return new;end;$$language plpgsql;


create trigger update_loanTrigget after update on loan
	for each row execute procedure update_loan();
delete from borrowser where loan_number = '1111';
'' '' loan '' '' '' '';
insert into loan values('1111','Central',100);
'' '' borrowser '' ('Adams','1111');
select * from borrower;
"" "" "" loan;
update loan set amount = amount - 101 where loan_number = '1111';
select * from branch;

