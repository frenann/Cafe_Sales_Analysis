/* Criando a tabela do Banco de Dados:

Esse script tem como função criar a tabela 'cafesales' dentro do Banco de Dados 'DWCafeSales'.
A nomenclatura adotada na criação das tabelas apresenta primeiramente a camada dos dados (bronze) junto do nome da tabela 


*/

-- Criação da tabela com informação das vendas:

CREATE TABLE bronze.cafesales (
transaction_ID NVARCHAR(50),
item NVARCHAR(50),
quantity NVARCHAR(50),
unit_price NVARCHAR(50),
total_spent NVARCHAR(50),
payment_method NVARCHAR(50),
loc NVARCHAR(50),
transaction_date NVARCHAR(50)
);
