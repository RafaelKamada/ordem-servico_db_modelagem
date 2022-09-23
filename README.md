# Construindo um Esquema Conceitual para Banco De dados - Ordem de Serviço

## Desafio DIO

### Objetivo: 
- Criar o esquema conceitual para o contexto de oficina com base na narrativa fornecida

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
![alt text](https://github.com/RafaelKamada/ordem-servico_db_modelagem/blob/main/Ordem%20de%20Servico.png)
