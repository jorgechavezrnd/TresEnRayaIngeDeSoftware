Given("visito la pagina para escoger que jugador empezara {string}") do |url|
  visit(url)
end

When("selecciono el jugador que empezara y preciono el boton {string}") do |jugar|
  click_button(jugar)
end

Then("visito la pagina con el tablero del juego {string}") do |url|
  visit(url)
end

Then("muestra el mensaje {string}") do |mensaje|
  expect(response_body).to  match(Regexp.new(Regexp.escape(mensaje)))
end