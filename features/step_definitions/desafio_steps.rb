Dado(/^que eu esteja na pagina de login do site$/) do
  visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
end

Dado(/^Efetue login com usuario e senha validos$/) do
  fill_in "txtUsername", :with=>"admin"
  fill_in "txtPassword", :with=>"admin"
  click_button('btnLogin')
end

Quando(/^Eu estiver na Home acessar o Menu PIM > Add Employee$/) do
  assert_text('Welcome Admin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Quando(/^preencher os dados Nome, SobreNome, UltimoNome$/) do
  fill_in "firstName", :with=>"Desafio"
  fill_in "middleName", :with=>"Dojo"
  fill_in "lastName", :with=>"Sr Ronilson"
  fill_in "employeeId", :with=>"0020"
end

Quando(/^clicar no Botão Save$/) do
  click_button('btnSave')
end

Então(/^Sistema apresenta tela para cadastro complementar do empregado$/) do
  assert_text('Personal Details')
end

Dado(/^Eu estiver na Home acessar o Menu PIM > Employee List$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Dado(/^preencher o campo Id com um id valido e clicar no Botão Search$/) do
  fill_in "empsearch_id", :with=>"0020"
  click_button('searchBtn')
  click_link('0020')
end

Quando(/^Sistema apresentar dados cliente, clicar no Botão Edit$/) do
  assert_text('Personal Details')
  click_button('btnSave')
end

Quando(/^alterar dados necessarios e clicar no botão Save$/) do
  fill_in "personal_txtEmpFirstName", :with=>"RONILSON"
  click_button('btnSave')
end

Então(/^Sistema apresenta mensagem 'Successfully Saved'$/) do
  assert_text('Successfully Saved')
end