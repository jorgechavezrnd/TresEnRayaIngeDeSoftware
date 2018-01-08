Given("visito la pagina para ingresar los nombres de los jugadores {string}") do |url|
  visit(url)
end

When("ingreso los nombres en los espacios de {string} y {string}") do |jugador1, jugador2|
  expect(response_body).to  match(Regexp.new(Regexp.escape(jugador1)))
  expect(response_body).to  match(Regexp.new(Regexp.escape(jugador2)))
end

Then("deberia mostrar la pagina para escoger que jugador empezara {string}") do |url|
  visit(url)
end

Then("mostrar el titulo {string}") do |titulo|
  expect(response_body).to  match(Regexp.new(Regexp.escape(titulo)))
end