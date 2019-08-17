require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]

    @user_phrase = PigLatinizer.new

    erb :piglatinize
end

get '/piglatinize' do

  erb :piglatinize
end


end
