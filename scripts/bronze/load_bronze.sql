/* Load das informações nas tabelas bronze:

- Como a primeira linha da fonte de dados representa o cabeçalho, é necessário informar que o load deve começar da segunda linha. Por isso foi utilizado o comando FIRSTROW = 2
- Como o delimitador das informações dos clientes é uma vírgula, também é necessário informar antes do load. Para isso, utilizou-se o comando FIELDTERMINATOR = ','
- O comando TRUNCATE é utilizado antes do insert para evitar que a tabela contenha informações indesejadas ou que as informações sejam inseridas de forma duplicada.

*/

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
		PRINT '---------------------------------------'
		PRINT 'Carregando camada Bronze'
		PRINT '---------------------------------------'

	
	-- Inserindo as informações das vendas na tabela bronze.cafesales:	
		TRUNCATE TABLE bronze.cafesales
		BULK INSERT bronze.cafesales
		FROM 'C:\Users\ferna\OneDrive\Desktop\Renan\Projetos\Cafe Sales\dirty_cafe_sales.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
END
