require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:bar.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	erb :index
end

get '/visit' do
  erb :visit
end

post '/visit' do
	client = Client.new
	client.name = params[:username]
	client.phone = params[:phone]
	client.date = params[:time]
	client.color = params[:color]
	client.barber = params[:variable]
	client.save

	erb "<h2> Спасибо, Вы записались </h2>"
end