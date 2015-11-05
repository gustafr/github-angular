require 'sinatra'

class App < Sinatra::Base
  set :views, proc {File.join(root, '..', 'views')}
  env = ENV['RACK_ENV'] || "development"

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
