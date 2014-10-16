require 'sinatra'

get '/' do
	@valor1=20
  erb :bienvenida
end

post '/juego' do

	@jugador1=params[:jugador1]
	@jugador2=params[:jugador2]
	erb :jugar
end 