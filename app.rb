require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p = PigLatinzer.new
    @user_phrase = p.piglatinize(params[:user_phrase])

    erb :piglatinize
end

end
