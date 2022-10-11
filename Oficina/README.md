# Construindo um Projeto Lógico de Banco de Dados do Zero - Oficina Mecânica

## Desafio DIO

### Objetivo: 
- Criar o esquema lógico para o contexto de oficina com base na narrativa fornecida.
- Criar script SQL para criação do esquema do banco de dados. 
- Criar script SQL para persistência de dados.
- Criar script SQL com queries respeitando cláusulas.


#### Cláusulas:
- Recuperações simples com SELECT Statement.
- Filtros com WHERE Statement.
- Crie expressões para gerar atributos derivados.
- Defina ordenações dos dados com ORDER BY.
- Condições de filtros aos grupos – HAVING Statement.
- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados.

<br/>

### Narrativa:
- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
- Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas
- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
- O valor de cada peça também irá compor a OS
- O cliente autoriza a execução dos serviços
- A mesma equipe avalia e executa os serviços
- Os mecânicos possuem código, nome, endereço e especialidade
- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos


### Contexto:
- Um cliente possui 1 ou mais carros.
- Um cliente leva seu carro para avaliação e é gerado uma ordem de serviço, seja revisão ou conserto.
- Um cliente autoriza a execução dos serviços.
- Uma Ordem de Serviço possui N serviços atraladas a ela, e um Serviço pode estar atrelado a N Ordem de Serviços.
- Uma Ordem de Serviço possui a especificação dos valores de 1 ou mais peças alteradas no veículo.
- Cada Serviço tem seu valor baseado em uma tabela de referência de mão de obra.
- Uma Ordem de Serviço é avaliada/executada pela mesma equipe.
- Uma Equipe pode atuar em 1 ou mais Ordens de Serviços.
- Uma Equipe contém 1 ou mais Mecânicos.

### Esquema:
![alt text](https://github.com/RafaelKamada/ordem-servico_db_modelagem/blob/main/Oficina/Ordem%20de%20Servi%C3%A7o%20-%20Oficina.png)


### Passos:

1 - Efetuar a criação do Banco de Dados utilizando o script [Criação do Esquema.sql](https://github.com/RafaelKamada/ordem-servico_db_modelagem/blob/main/Oficina/Cria%C3%A7%C3%A3o%20do%20Esquema.sql) 

2 - Para persistencia de dados utilizar o script [Inserts.sql](https://github.com/RafaelKamada/ordem-servico_db_modelagem/blob/main/Oficina/Inserts.sql) 

3 - Executar as queries com o script [Selects.sql](https://github.com/RafaelKamada/ordem-servico_db_modelagem/blob/main/Oficina/Selects.sql) 
