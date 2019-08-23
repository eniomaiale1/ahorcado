
Given(/^que abri la aplicacion$/) do
    visit '/'
  end
  
  When(/^inicio el juego$/) do
    click_button("Iniciar juego")
  end

  Then(/^debo ver un titulo de bienvenida "([^"]*)"$/) do |arg1|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then(/^debo ver un titulo de juego iniciado "([^"]*)"$/) do |titulo|
    expect(page.body).to match /#{titulo}/m
  end