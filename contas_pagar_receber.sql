-- listar todas as contas a pagar
-- listar todas as contas a receber
-- listar todas as contas pagas
-- listar todas as contas recebidas
-- valor total das contas a receber por categoria
-- valor total das contas a pagar por categoria
-- quantidade de contas a pagar vencidas
-- quantidade de contas a receber vencidas
-- quantidade de contas e valor total a receber este mês
-- contas a pagar hoje
-- quantidade de contas a pagar hoje
-- contas a receber entre datas
-- contas pagas entre datas


create table conta(
    id serial not null,
    valor,
    despeca,
    tipo
);


create table conta_pagar(
    id serial not null,
    data_vencimento date,
    data_pagamento date,
);

create table contas_receber(
    id serial not null,
    data_recebimento date,
);

