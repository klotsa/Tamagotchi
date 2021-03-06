require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/tamagotchi') do
  name = params.fetch("name")
  @tamagotchi = Tamagotchi.new(name)
  erb(:tamagotchi)
end
