require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/" do
    @Pig_Latin =
    erb :piglatinize
  end
end
