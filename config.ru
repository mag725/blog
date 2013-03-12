require 'bundler'
Bundler.setup :default
require 'sinatra/base'
require 'sprockets'
require './app'
require 'sass'
require 'compass'
require 'haml'
require 'sprockets-sass'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/js'
  environment.append_path 'assets/css'
  environment.append_path 'assets/img'
  run environment
end

map '/' do
  run Sinatra::Application
end
