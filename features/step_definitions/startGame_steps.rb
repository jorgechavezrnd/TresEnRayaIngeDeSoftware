Given("visito la pagina principal {string}") do |url|
  visit(url)
end

Then("deberia ver el titulo {string}") do |titulo|
  expect(response_body).to  match(Regexp.new(Regexp.escape(titulo)))
end

Then("ver el boton {string}") do |jugar|
  expect(response_body).to  match(Regexp.new(Regexp.escape(jugar)))
end

When("preciono el boton {string}") do |jugar|
  click_button(jugar)
end

Then("deberia visitar la pagina para ingresar los nombres de los jugadores {string}") do |url|
  visit(url)
end

Then("ver el titulo {string}") do |titulo|
  expect(response_body).to  match(Regexp.new(Regexp.escape(titulo)))
end

Then("ver {string}") do |jugador|
  expect(response_body).to  match(Regexp.new(Regexp.escape(jugador)))
end