#language: pt
#utf-8

Funcionalidade: Cadastrar Cliente
Eu como Dono da empresa
Quero cadastrar um novo empregado
E atualizar seu cadastro
Para saber suas informações atualizada


Cenario: Cadastrar Empregado
Dado que eu esteja na pagina de login do site
E Efetue login com usuario e senha validos
Quando Eu estiver na Home acessar o Menu PIM > Add Employee
E preencher os dados Nome, SobreNome, UltimoNome
E clicar no Botão Save
Então Sistema apresenta tela para cadastro complementar do empregado

Cenario: Editar Empregado
Dado que eu esteja na pagina de login do site
E Efetue login com usuario e senha validos
E Eu estiver na Home acessar o Menu PIM > Employee List
E preencher o campo Id com um id valido e clicar no Botão Search
Quando Sistema apresentar dados cliente, clicar no Botão Edit 
E alterar dados necessarios e clicar no botão Save
Então Sistema apresenta mensagem 'Successfully Saved'