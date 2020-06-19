require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "sessionsecret"
  end

  get '/' do
    session["name"] = "Joch"
    @session = session
    erb :index
  end

  post '/checkout' do
    erb :checkout
  end

end
