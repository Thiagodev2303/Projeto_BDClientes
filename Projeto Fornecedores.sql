create database BDRevisao
use BDRevisao

create table fornecedores
(f# varchar(10) not null primary key,
fname char(30),
stat int,
city char(40))

create table pecas
(p# varchar(30) not null primary key,
pname char(30),
color char(30),
wei int,
pcity char(40))

create table fornecimentos
(f# varchar(10),
p# varchar(30),
qty int,
primary key (f#,p#),
foreign key (f#) references fornecedores,
foreign key (p#) references pecas )

--2)
insert into fornecedores(f#,fname,stat,city) values ('S1','Smith',20,'London')
insert into fornecedores(f#,fname,stat,city) values ('S2','Jones',10,'Paris')
insert into fornecedores(f#,fname,stat,city) values ('S3','Blake',30,'Paris')
insert into fornecedores(f#,fname,stat,city) values ('S4','Clark',20,'London')
insert into fornecedores(f#,fname,stat,city) values ('S5','Adams',30,'Athens')

insert into pecas(p#,pname,color,wei,pcity) values ('P1','Nut','Red',12,'London')
insert into pecas(p#,pname,color,wei,pcity) values ('P2','Bolt','Green',17,'Paris')
insert into pecas(p#,pname,color,wei,pcity) values ('P3','Screw','Blue',17,'Rome')
insert into pecas(p#,pname,color,wei,pcity) values ('P4','Screw','Red',14,'London')
insert into pecas(p#,pname,color,wei,pcity) values ('P5','Cam','Blue',12,'Paris')
insert into pecas(p#,pname,color,wei,pcity) values ('P6','Cog','Red',19,'London')

insert into fornecimentos(f#,p#,qty) values ('S1','P1',300)
insert into fornecimentos(f#,p#,qty) values ('S1','P2',200)
insert into fornecimentos(f#,p#,qty) values ('S1','P3',400)
insert into fornecimentos(f#,p#,qty) values ('S1','P4',200)
insert into fornecimentos(f#,p#,qty) values ('S1','P5',100)
insert into fornecimentos(f#,p#,qty) values ('S1','P6',100)
insert into fornecimentos(f#,p#,qty) values ('S2','P1',300)
insert into fornecimentos(f#,p#,qty) values ('S2','P2',400)
insert into fornecimentos(f#,p#,qty) values ('S3','P2',200)
insert into fornecimentos(f#,p#,qty) values ('S4','P2',200)
insert into fornecimentos(f#,p#,qty) values ('S4','P4',300)
insert into fornecimentos(f#,p#,qty) values ('S4','P5',400)

select f#,fname,stat,city,p#,pname,color,wei,pcity 
from fornecedores,pecas
where city = pcity

select f#,fname,stat,city,p#,pname,color,wei,pcity 
from fornecedores,pecas
order by city asc


update pecas 
set color = 'Amarelo', wei = wei + 5, pcity = null
where p# = 'P2'


update fornecedores
set stat = stat *2


delete from fornecedores where f#='S1'


delete from fornecedores where city = 'Madri'


delete from fornecimentos


insert into pecas(p#,pname,color,wei,pcity) values ('P7',null,null,24,'Atenas')


insert into pecas(p#,pname,color,wei,pcity) values ('P8','Sproket','Rosa',14,'Nice')


insert into fornecimentos(f#,p#,qty) values ('S20','P20',1000)