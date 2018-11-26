

select * from uf


insert into uf (nome) values ('SP'), ('SE'), ('TO');

UPDATE UF SET NOME = 'AC' where id = 2;

DELETE FROM CIDADE WHERE ID = 3;

DELETE FROM UF WHERE ID IN (2,3);

select * from cidade;

insert into cidade (nomeCidade, Uf_ID)
values ('Chapecó', 25)
, ('Blumenau', 25)
, ('Joinville', 25)
, ('Curitiba' ,17)
, ('Maringá' ,17)
, ('Lunardeli' ,17)
, ('Apucarana' ,17)
, ('Santa fé' ,17)
, ('São Miguel do Iguaçu',17)
, ('Arapongas' ,17)
, ('Ponta Grossa' ,17)
, ('Jandaia do Sul' ,17)
, ('Ribeirão Preto',26);


DELETE FROM UF WHERE ID IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,21,22,23,24,27,28);

insert into cidade (nomeCidade, Uf_ID)
values ('Ourinhos',26) , ('Campinas',26) , ('Sorocaba',26);
use mydb;
UPDATE cidade SET nomeCidade = 'Lunardelli' where id = 12;
UPDATE cidade SET nomeCidade = 'Jandaia' where id = 18;
UPDATE cidade SET nomeCidade = 'Cidade Canção' where id = 11;

SELECT C.nomeCidade as NOMECIDADE, U.nome as NOMEUF
FROM cidade as C inner join Uf as U
on C.uf_id = U.id
ORDER BY U.NOME;

SELECT C.nomeCidade as NOMECIDADE, U.nome as NOMEUF
FROM cidade as C inner join Uf as U
on C.uf_id = U.id
ORDER BY C.nomeCidade;

Select count(nomeCidade), uf_id from cidade group by uf_id;


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
 
 
SELECT 
 





