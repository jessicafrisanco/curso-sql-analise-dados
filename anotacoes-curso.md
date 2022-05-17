## **Tipos de Análise de Dados**
    
  **Análise Descritiva:** é utilizada para entender o que aconteceu, um processo voltado ao passado;
    
  **Análise de Diagnóstico:** é feito por meio de comparação de diversos períodos. Com ela é possível encontrar, identificar e detalhar padrões que possam ter ligação direta com situações que afetam o negócio;
    
  **Análise Preditiva:** foca no que provavelmente acontecerá. Utiliza o conhecimento gerado pelas anteriores, a fim de criar possíveis cenários, identificar tendências e prever resultados;
    
  **Análise Prescritiva:** responsável por sugerir ações a serem tomadas para aproveitamento de uma oportunidade ou para qualquer tipo de risco.
  
 ## **Tipos de Bancos de Dados** 
  
  | Relacionais (SQL) | Não Relacionais (NoSQL) |
| --- | --- |
| Dados organizados em tabelas | Dados organizados em coleções |
| Tabelas contém registros (linhas) | Coleções contém documentos |
| Tabelas podem se relacionar entre si | Coleções não se relacionam |
| Dados são estruturados | Dados são semi ou não estruturados |
| Estruturas necessitam de esquemas | Estruturas geralmente mais flexíveis |


## **Chaves primárias e estrangeiras**
    
 **Chave**: identificador único de uma tabela
    
 **Chave primária:** Identifica cada registro (linha) da tabela unicamente;
    
 **Chave estrangeira:** Chave primária de outra tabela presente na tabela em questão.
 
    
## **Subconjuntos da linguagem SQL**
    
 → DML: Linguagem de manipulação de dados;
    
 → DDL: Linguagem de definição de dados;
    
 → DTL: Linguagem de transação de dados;
    
 → DCL: Linguagem de controle de dados;
    
 → DQL: Linguagem de consulta de dados.
    

## **Funções**
    
 **Limit:** Estabelece limite de linhas da tabela consultada.

 **Distinct:** Retorna apenas uma ocorrência de campos que contenham dados repetidos.

 **Where:** Filtro de linhas. É um comando de restrição.
 
 ## **Apelidos**
 
 Nome temporário (identificação) para uma coluna ou tabela;
 
 Pode facilitar digitação;
 
 Pode facilitar leitura;
 
 Importante para quando há mais de uma tabela;
 
 Comando AS (de alias);
 
 Duração de uma consulta (query).
 

## **Comandos Condicionais**
    
**CASE**

    
 → Case when... Then...End (Caso em que...então...fim);
 
 → 1 ou mais;  
 
 → Avalia somente o primeiro caso verdadeiro; 
 
 → Else (se não).
    
**IF**
    
    
 → IF (COND, RESV, RESF);
 
 → Se COND (condição) for verdadeira, retorna RESV, caso seja falsa, retorna RESF;
 
 → Is true (é verdadeira);
 
 → Is false (é falso).
 
    
**COALESCE**
    
 → COALESCE (exp1, ..., expn);  
 
 → Retorna a primeira expressão não nula.
 
 
 ## **Comandos de Agrupamento e Ordenação**
    
 **GROUP BY**
    
 → Agrupar e sumarizar resultados;
    
 → Nome da coluna ou posição dela no *select;*
    
 → Usado em funções de agregação;
    
 → Pode ser usado também com função similar ao *distinct.*
 
    
 **ORDER BY**
    
 → Ordenar resultados;
    
 → Nome da coluna ou posição dela no *select;*
    
 → ASC (ascendente) ou DESC (descendente);
    
 → Ordem alfabética ou numérica.
    
## **Relacionamento de Tabelas**
    
**JOIN**
    
→ Vários tipos (INNER, LEFT, RIGHT, FULL);
    
→ Juntar informações que estão em duas ou mais tabelas diferentes;
    
→ Claúsula ON: Permite o relacionamento de duas tabelas através de uma chave.
    
## **Funções de Agregação**
    
→ Realizam cálculos gerais ou em grupo de valores;
    
→ Podem reduzir informações;
    
→ Excelentes para agrupar informações;
    
→ Retornam um único resultado;
    
→ Podem ser usados com *distinct,* para considerar apenas valores únicos.


    
**COUNT:** Retorna o número de linhas de um grupo de valores ou expressão;
    
**MAX:** Retorna o valor máximo presente em um grupo de valores ou expressão;
    
**MIN:** Retorna o valor mínimo presente em um grupo de valores ou expressão;
    
**SUM:** Retorna a soma de um grupo de valores ou expressão;
    
**AVG:** Retorna a média de um grupo de valores ou expressão;
    
## **Funções Matemáticas**
    
**ABS:** Calcula o valor absoluto;
    
**RAND:** Retorna um valor aleatório entre 0 e 1, não considerando o 1;
    
**SQRT:** Cálcula a raiz quadrada;
    
**POW:** Retorna a primeira entrada elevada à segunda entrada;
    
**LOG:** Retorna o logarítimo da primeira entrada na base da segunda entrada;
    
**ROUND:** Arredonda o valor para o número de casas decimais escolhido;
    
**MOD:** Retorna o resto da divisão da primeira entrada pela segunda;
    
**SIN:** Retorna o seno de um ângulo (em radianos).
    
## **Funções de String**
    
→ Sequência de caracteres;
    
→ Primeiro caractere: posição 1;
    
→ Existem muitas funções;
    
→ Muito útil para campos textuais.

    
**CONCAT:** Concatena uma ou mais strings;
    
**STARTS_WITH:** Verifica se a string começa com a segunda entrada;
    
**LOWER:** Transforma todos os caracteres da string em minuscúlas;
    
**UPPER:** Transforma todos os caracteres da string em maiúsculas;
    
**SPLIT:** Separa a string em uma ou mais strings, baseando-se em um limitador;
    
**TRIM:** Remove os caracteres iniciais e finais da string correspondentes à segunda entrada;
    
**REPLACE:** Substitui parte da string por outro valor;
    
**CHAR_LENGTH:** Retorna o número de caracteres presentes na string.
    
## **Funções de Datas**
    
→ Funções de manipulação de datas;
    
→ É possível manipular horas, minutos, segundos, milesegundos e até microsegundos;
    
→ Muito útil para fuso horário, diferença entre períodos, formatação de data, etc;
    
→ DATE, DATETIME, TIMESTAMP.

    
**CURRENT_DATE/CURRENT_DATETIME/CURRENT_TIMESTAMP:** Verifica a data/ data + hora atual, em qualquer zona de fuso horário;
    
**EXTRACT:** Extrai informação de uma data (ano, semana, dia, hora, segundo, etc);
    
**DATE_ADD/DATETIME_ADD/TIMESTAMP_ADD:** Soma um intervalo à uma data ou data + hora;
    
**DATE_SUB/DATETIME_SUB/TIMESTAMP_SUB:** Subtrai um intervalo à uma data ou data + hora;
    
**DATE_DIFF/DATETIME_DIFF/TIMESTAMP_DIFF:** Retorna um intervalo de diferença entre datas ou data + hora;
    
**FORMAT_DATE/FORMAT_DATETIME/FORMAT_TIMESTAMP:** Formata uma data ou data + hora para o formato de tempo desejado;
    
**DATE/DATETIME/TIMESTAMP:** Cria um objeto data ou data + hora.
    
## **Funções Geográficas**
    
→  Funções de manipulação de coordenadas geográficas;
    
→  É possível analisar dados geográficos, determinar relações espaciais e criar coordenadas.

    
**ST_GEOGPOINT:** Cria um ponto no espaço, com longitude na primeira entrada e a latitude na segunda entrada;
    
**ST_DISTANCE:** Cálcula a distância, em metros, entre dois pontos no espaço;
    
**ST_X:** Retorna a longitude de um ponto no espaço;
    
**ST_Y:** Retorna a latitude de um ponto no espaço.
    
## **SUBQUERY**
    
→  Subconsulta ou subselect;
    
→  Consulta dentro de uma consulta;
    
→ Para situações onde uma consulta não é capaz de trazer o resultado desejado ou quando uma consulta se torna complexa demais;
    
→ 3 tipos: tabela, consulta e filtro.
    
**Tabela:** Uma consulta será retornada como uma tabela da qual informações serão extraídas pela consulta principal. 
    
- A consulta pode ser usada com o FROM mas também com o JOIN;
    
**Coluna:** Uma consulta será retornada como uma coluna para a consulta principal. 
    
- Dentro desta consulta que será retornada como coluna, deve-se relacionar uma chave com a TABELA_A;
    
**Filtro:** Uma consulta será usada como filtro para a consulta principal. 
    
- Dentro desta consulta que será usada como filtro, deve-se relacionar uma chave com a TABELA_A; 
    
- Pode-se usar operadores de comparação, como o IN, mas também =, < =, > =, etc.
    
## **Window Functions**
    
→ Funções de janela;
    
→ Dado um intervalo (ou janela) de registros, efetua-se uma operação sobre elas;
    
→ É possível retornar os resultados para cada linha que se deseja obter;
    
→ Diferem-se das funções de agregações por retornarem o resultado dentro de uma consulta para cada linha. Já a agregada retorna um único resultado com GROUP BY.

    
**FIRST_VALUE:** Retorna o primeiro valor da variável desejada, considerando a partição agrupada e/ou coordenada;
    
**LAST_VALUE:** Retorna o último valor da variável desejada, considerando a partição agrupada e/ou desejada;
    
**LEAD:** Retorna o valor da variável desejada de uma linha dubsequente, considerando a partição agrupada e/ou ordenada;
    
**LAG:** Retorna o valor da variável desejada de uma linha anterior, considerando a partição agrupada e/ou ordenada;
    
**RANK:** Retorna uma classificação numerada de cada partição, onde a ordenação é obrigatória;
    
**ROW_NUMBER:** Retorna o número de cada linha para cada partição, mas a ordenação não é obrigatória;
    
**FUNÇÕES DE AGREGAÇÃO:** MAX, MIN, AVG, COUNT, SUM...

    
**Parâmetros**
    
**OVER:** Determina qual será a janela de linhas escolhidas e como estará ordenada. É obrigatória;
    
**PARTITION BY:** Dentro de uma claúsula OVER. Dividirá as linhas de entrada em partições. É opcional;
    
**ORDER BY:** Dentro da claúsula OVER. Ordenará as linhas de entrada de cada partição. É obrigatória para algumas funções.
 
