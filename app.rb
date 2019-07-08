require 'sinatra'
set :session_secret, 'super secret' #make sure this line is after the one above, because sinatra is required to run it
get '/' do
  'Hello World!'
end

get '/secret' do
	"A HUGE SECRET!"
end

get '/random-cat' do
	@name = (["Amigo","Oscar","Viking"]).sample
	erb(:index)
end

get '/named-cat' do
	p params
	@name = params[:name]
	erb(:index)
end
