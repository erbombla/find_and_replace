require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @output = params.fetch('far').find_and_replace()
  erb(:output)
end
