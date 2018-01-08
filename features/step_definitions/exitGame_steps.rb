Given("visito la pagina con el tablero {string}") do |url|
  visit(url)
end

Then("Vuelve a la pagina principal {string}") do |url|
  visit(url)
end