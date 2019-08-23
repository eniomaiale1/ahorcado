
Given(/^que abri la aplicacion$/) do
    visit '/'
  end
  
  When(/^inicio el juego$/) do
    click_button("Iniciar juego")
  end

  Then(/^debo ver un titulo de bienvenida "([^"]*)"$/) do |texto|
    expect(page.body).to match /#{texto}/m
  end
  
  Then(/^debo ver un titulo de juego iniciado "([^"]*)"$/) do |titulo|
    expect(page.body).to match /#{titulo}/m
  end

  Given(/^que ya tengo una "([^"]*)"$/) do |palabra|
    expect(page.body).to match /#{palabra}/m
  end
  
  Then(/^debo ver la palabra como "([^"]*)"$/) do |asteriscos|
    expect(page.body).to match /#{asteriscos}/m
  end