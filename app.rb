require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = (params.fetch('sentence')).find_and_replace((params.fetch('word')), (params.fetch('replace')))
  erb(:result)
end
