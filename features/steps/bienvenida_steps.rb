Given(/^dado que me encuentro en la pagina principal$/) do
  visit "/"
end

Then(/^Veo el mensaje "(.*?)" y veo la imagen "(.*?)"$/) do |mensaje, imagen|
	last_response.body.should =~ /#{mensaje}/m
	last_response.should have_xpath("//img[@src=\"#{imagen}\"]")
end

When(/^lleno "(.*?)" con "(.*?)" y lleno "(.*?)" con "(.*?)" y picnho "(.*?)"$/) do |campo1, valor1, campo2, valor2, boton|
	fill_in(campo1, :with => valor2)
	fill_in(campo2, :with => valor2)
	click_button(boton)
end

Then(/^veo los nombres "(.*?)" y "(.*?)"$/) do |nombre1, nombre2|
	last_response.body.should =~ /#{nombre1}/m
	last_response.body.should =~ /#{nombre2}/m
end
