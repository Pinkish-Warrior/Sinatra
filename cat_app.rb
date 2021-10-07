require "sinatra"
require "sinatra/reloader" if development?
require "capybara/rails"
require "selenium-webdriver"
require "capybara/dsl"
require "chormedriver-helper"

get '/cat' do
  @name = ['Amigo', 'Mistry', 'Almond'].sample
  erb:index
end

get '/name-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end