require('rspec')
require('pry')
require('sinatra')
require('sinatra/reloader')
require("./lib/scrabble")

get('/form') do
  erb(:form)
end

get("/result") do
  @sender = params.fetch('sender').scrabble
  erb(:result)
end
