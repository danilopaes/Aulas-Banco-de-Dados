
--drop table cliente cascade
create table cliente (
	id serial primary key,
	carro_id int references carro(id),
	endereço_id int references endereco(id),
	nome varchar(100),
	telefone varchar (11),
	fidelidade int
);

--drop table carro cascade
create table carro (
	id serial primary key,
	tipo_id int references tipo(id),
	marca varchar (100)
);
--drop table endereco cascade
create table endereco (
	id serial primary key,
	rua varchar (150),
	numero int,
	bairro varchar (100),
	cidade varchar (100),
	estado varchar (100)
);
--drop table tipo cascade
create table tipo (
	id serial primary key,
	tamanho varchar (30)
	
);
--drop table pedido cascade
create table pedido (
	id serial primary key,
	servico_id int references servico(id),
	cliente_id int references cliente(id),
	data date,
	total real
);
--drop table servico cascade
create table servico(
	id serial primary key,
	descricao varchar (100),
	valor real
);
-- inserção da tabela servico
insert into servico values (default,'Lavacao',50);
insert into servico values (default,'Lavacao completa',150);
insert into servico values (default,'Troca de Oleo',70);
insert into servico values (default,'Manutencao',350);
-- inserção da tabela tipo 
insert into tipo values (default,'Pequeno');
insert into tipo values (default,'Medio');
insert into tipo values (default,'Grande');
-- inserção da tabela endereco 
insert into endereco values (default,'Av. Lima', 2022, 'Centro', 'Tubarao', 'SC');
insert into endereco values (default,'Travessa Ruam', 51, 'Madri', 'Tubarao', 'SC');
insert into endereco values (default,'Rua Manoel', 370, 'Passagem', 'Tubarao' ,'SC');
-- inserção da tabela carro
insert into carro values (default,1,'Fiat');
insert into carro values (default,2,'Honda');
insert into carro values (default,3,'Ford');
-- inserção da tabela cliente 
insert into cliente values (default,1, 1, 'Roberto', '04836262533', 1);
insert into cliente values (default,2, 2, 'Maria', '04884656466', 5);
insert into cliente values (default,3, 3, 'Joao', '04899310546', 2);
-- inserção da tabela pedido
insert into pedido values (default,1, 9, '10/05/2022', 0);
insert into pedido values (default,2, 10, '18/05/2022', 0);
insert into pedido values (default,3, 11, '01/05/2022', 0);

select * from servico;
select * from tipo;
select * from endereco;
select * from carro;
select * from cliente;
select * from pedido;
-- comando para deletar
delete from cliente where id = 5;

-- commando update
update endereco set estado = 'RS' where bairro = 'Madri'; 

-- select entre tabela cliente e pedido, mostrando o nome e a data do pedido
select cliente.nome, pedido.data from cliente join pedido on pedido.cliente_id = cliente.id;

--listar total pedidos por cliente
