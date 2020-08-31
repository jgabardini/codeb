require 'sinatra'
require './config'
require './lib/codebreaker'

codebreaker= nil
get '/' do
    codebreaker= Codebreak.new
    erb :index
end

post '/' do
   @mensaje= codebreaker.arriesgar 8
    erb :index
end

