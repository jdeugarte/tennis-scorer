require 'sinatra'

get '/' do
	@valor1=20
  erb :bienvenida
end
