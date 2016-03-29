ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'
require 'rubygems'
require 'tilt/erb'
require 'byebug'

require_relative 'data_mapper_setup'
require_relative 'server'
require_relative 'controllers/user'
require_relative 'controllers/chit'
require_relative 'controllers/reply'
require_relative 'controllers/session'

class Chitter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  run! if app_file == 'app/app.rb'
end
