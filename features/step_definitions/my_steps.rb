Given(/^estoy en la pagina inicial del juego$/) do
  visit '/'
end

Then(/^quiero ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

When(/^lleno el campo "(.*?)" con el valor "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

Then(/^presiono el boton "(.*?)"$/) do |adivinar|
  click_button(adivinar)
end

When(/^si la "(.*?)" ingresada corresponde a la "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given(/^Dado que estoy en la pantalla inicial del juego$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Debo ver la Pista y la palabra Secreta$/) do
  pending # express the regexp above with the code you wish you had
end




