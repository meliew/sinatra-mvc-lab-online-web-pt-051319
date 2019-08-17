require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    @text = Piglatinizer.new(params[:user_input])
      
    erb :piglatinize
  end

  get '/piglatinize' do

    erb :piglatinize
  end


end
