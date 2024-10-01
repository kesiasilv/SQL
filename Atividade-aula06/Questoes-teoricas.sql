## Questões teoricas ##
-- 1) Qual o comando básico para inserir dados numa tabela de banco de Dados? Quais suas variações possíveis?
/* INSERT INTO possiveis varições desse comando é inserção sem especificar as colunas, inserção de múltiplas linhas,
inserção a partir de uma consulta, inserção com valores padrão, inserção com subconsulta.
 
 2)Por que em tabelas com chave primária com autoincremento, devemos evitar passar corno parâmentro a chave e seu respectivo valor?
  Porque isso pode causar problemas como violação de unicidade, desordem na sequência de valores e possíveis conflitos com o gerenciamento 
  automático do banco de dados. Permitir que o banco de dados gere automaticamente os valores assegura a integridade e a consistência da tabela, 
  além de simplificar o processo de inserção e evitar erros futuros.
 
 3) Podemos inserir mais de uma linha de registros num único comando? Cite exemplos
 Sim, neste exemplo três registros são inseridos na tabela clientes em uma única instrução
 INSERT INTO clientes (nome, email) VALUES 
    ('Ana Silva', 'ana.silva@example.com'),
    ('Carlos Santos', 'carlos.santos@example.com'),
    ('Maria Oliveira', 'maria.oliveira@example.com');

4) Qual o formato básico da datas no MySQL? Qual o formato básico de hora ou tempo?
Data (ano-mes-dia), hora(hora-minuto-segundo)


 5) É possível inserir uma chave estrangeira numa tabela, sem que a mesma exista na tabela original? justifique.
Não, não é possível inserir uma chave estrangeira em uma tabela se o valor correspondente não existir na tabela referenciada. A ideia da chave estrangeira
é garatir que os dados se conecte corretamente entre as tabelas. Então, se você tentar usar um valor que não está na tabela original, o banco de dados vai impedir
para manter tudo em ordem e evitar dados quebrados.

 6) Qual o comando para excluir dados de uma tabela?
 DELETE FROM

 7) Qual o melhor critério de exclusão desses dados? É possível usar vários critérios para exclusão? Quais as vantagens ou desvantagens dessa segunda abordagem?
 Para excluir dados, use uma condição específica para garantir que só os registros desejados sejam removidos.Pode-se combinar vários critérios para maior
 precisão, mas isso pode tornar a consulta mais complexa e, às vezes, mais lenta. O uso de múltiplos critérios ajuda a evitar exclusões acidentais, mas é preciso verificar
 se a lógica está correta.


8) Podemos apagar dados de uma tabela, cuja sua chave primária, seja uma chave estrangeira em umna outra tabela? Qual o efeito disto?
Sim, O efeito disso depende das regras de integridade referencial definidas

 9) Qual o comando para atualizar dados (registros) de urna tabela? Demonstre com um exemplo.
UPDATE ... SET
update pacientes set idade= 21, idade= 30 where idpacientes=39;

10) As regras de filtros (cláusula Where) também podem ser usadas nas atualizações de registro?
Sim, a cláusula WHERE pode e deve ser usada com o comando UPDATE para aplicar filtros e garantir que apenas os registros desejados
sejam atualizados. Sem a cláusula WHERE, todos os registros da tabela seriam atualizados.


 11) Qual é o melhor atributo para se filtrar o registro a ser atualizado numa tabela?
 O melhor é usar uma chave primária porque ela identifica cada registro de forma única e evita problemas de atualizar mais de um item. Se não tiver chave primária, use
 atributos únicos que identificam bem o registro.
 */