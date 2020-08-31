
When("inicio la aplicación") do
    visit '/'
end
  
Then("muestra {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

Given("inicio la aplicación con numero secreto {int}") do |secreto|
    visit '/'
end
  
When("arriesga {int}") do |valor|
    fill_in "numero", :with => valor
    click_button "Arriesgar"
end
  
Then("muestra mensaje {string}") do |mensaje|
    expect(page).to have_css "div#mensaje", text: mensaje
end