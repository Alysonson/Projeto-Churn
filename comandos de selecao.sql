select * from Churn_0
select * from teste

update Churn_0 set Sexo = 1 where Sexo = 'Male'
update Churn_0 set Sexo = 0 where Sexo = 'Female'

ALTER TABLE teste ADD id VARCHAR(20) NULL

select * from Churn_0 ch
join teste te
on ch.CreditScore = te.score
and ch.Sexo = te.sexo
and ch.Idade = te.idade
and ch.NumProdutos = te.produto
and ch.TempoConta = te.tempo
where (convert(float,ch.SalarioEstimado) - convert(float,te.salario)) < 0.5 
and (convert(float,ch.Saldo) - convert(float,te.saldo)) < 0.5
and te.previsao = 'True'
and ch.Situacao = 0