require 'sinatra'
require 'sinatra/activerecord'
require 'base64'
require './config/environments'

set :port, 80

# set :database, "sqlite3:developement.sqlite3"
# set :database_file, "./config/database.yml"

# app.rb
get '/' do
    @users = User.all  
    @lockers = Locker.all
    erb :index
end

get '/locker/:locker_id' do
    begin
        @locker = Locker.find(params['locker_id'].to_i)
        @items = Item.all
        @locker_id = params['locker_id'].to_i
        erb :locker
    rescue => error
        "#{error}"
    end        
end

# at the bottom of app.rb
require './models'