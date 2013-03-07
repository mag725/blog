require 'bundler'
Bundler.setup :default
require 'sinatra'

get '/' do
  haml :home
end