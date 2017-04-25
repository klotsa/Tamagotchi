require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/tamagotchi') do
  @name = params.fetch("name")
  @tamagotchi = Tamagotchi.new(@name)
  @pet_name = @tamagotchi.name()
  @food_level = @tamagotchi.food_level()
  @sleep_level = @tamagotchi.sleep_level()
  @activity_level = @tamagotchi.activity_level()
  @is_alive = @tamagotchi.is_alive()
  erb(:tamagotchi)
end
