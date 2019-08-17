require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    @user_phrase = Piglatinizer.new(params[:user_input])

  end

  get '/piglatinize' do

    erb :piglatinize
  end


end
