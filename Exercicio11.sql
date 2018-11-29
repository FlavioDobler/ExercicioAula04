/*Exercicio 1*/ 
use mydb
select * from uf;

insert into uf (nome) values ('SP'),('PR'),('SC'),('MS'),('MT'),('PA'),('AC'),('AL'),('AP'),('AM'),('MG'),('DF'),('CE'),('BA'),('PI'),('RJ'),('RN'),('RS'),('RO'),('RR'),('SE'),('TO'),('GO'),('PB');

/*Exercicio 2*/

insert into cidade (nome, uf_id)
select 'Apucarana',ID from uf where nome = 'PR'
union
select 'Maringá',ID from uf where nome = 'PR'
union
select 'Curitiba',ID from uf where nome = 'PR'
union 
select 'Santa fé',ID from uf where nome = 'PR'
union 
select 'São Miguel do Iguaçu',ID from uf where nome = 'PR'
union 
select 'Arapongas',ID from uf where nome = 'PR'
union 
select 'Ponta Grossa',ID from uf where nome = 'PR'
union 
select 'Jandaia do Sul',ID from uf where nome = 'PR'
union 
select 'Lunardeli',ID from uf where nome = 'PR'
union 
select 'Chapecó',ID from uf where nome = 'SC'
union 
select 'Blumenau',ID from uf where nome = 'SC'
union 
select 'Joinville',ID from uf where nome = 'SC'
union 
select 'Ribeirão Preto',ID from uf where nome = 'SP';

/*Exercicio 3 
Tinha feito assim: DELETE FROM UF WHERE ID IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,23,24,27,28);*/

delete from uf where id in (
	select * from (
		select u.id from uf u 
			left join cidade c on u.id = c.uf_id
		where c.id is null
	) AS REMOCAO
)

/*Exercicio 4 */

insert into cidade (nome, Uf_ID)
values ('Ourinhos',1) , ('Campinas',1) , ('Sorocaba',1);

/*Exercicio 5 */
UPDATE cidade SET nomeCidade = 'Lunardelli' where id = 9;
UPDATE cidade SET nomeCidade = 'Jandaia' where id = 8;
UPDATE cidade SET nomeCidade = 'Cidade Canção' where id = 2;

/*Exercicio 6
Tinha feito igual*/
select c.nome, u.nome from cidade c
inner join uf u on u.id = c.uf_id
order by u.nome, c.nome;

/*Exercicio 7 */
select  u.nome, count(c.nome) from cidade c
inner join uf u on u.id = c.uf_id
group by u.nome
order by u.nome, c.nome;

/*Exercicio 8*/
alter table endereco
	modify column tipo varchar(10) null
/* Tinha feito assim 
select *from pessoa;
insert into pessoa (nome, documento)
values ('Flavio','1111222223'),('Jose','1122134544'),('Lucas','5546585544');

insert into endereco (pessoa_ID,cidade_id,tipoLogradouro, logradouro, numero,complemento,cep,tipo)
values (1,11,'Av', 'Brasil', '50', 'na', '11111111', 1),
 (1,11,'Rua', 'Fortaleza', '111', 'na','78840000',2),
 (2,17,'Rua', 'Airton Sena', '1', 'na', '11111112',1),
 (2,17,'Rua', 'Jao', '22', 'na', '55555555',2),
 (3,13,'Av', 'Tucano', '33', 'na', '33333333',1),
 (3,13,'Rua', 'Sao Jao', '25', 'Fundos' , '52525252',2);

Exercicios 9 e 10 sao iguais
*/

/*Exercicio 11*/
select p.nome, e.logradouro, e.cep, c.nome as cidade, 
u.nome as  estado
FROM PESSOA P
inner join endereco e on e.pessoa_id = p.id
inner join cidade c on c.id = e.cidade_id
inner join uf u on u.id = c.uf_id
order by p.nome, c.nome, u.nome;

 
    
    







