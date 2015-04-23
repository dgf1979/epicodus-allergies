require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/allergies') do
  @results = params.fetch('allergy_s').to_i.score()
  erb(:results)
end
