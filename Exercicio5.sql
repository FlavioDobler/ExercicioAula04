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





