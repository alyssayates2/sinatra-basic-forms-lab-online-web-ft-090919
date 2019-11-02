require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    binding.pry
    @puppy = Puppy.new.create_puppy(params[:name, :breed, :months_old])
    erb :display_puppy
  end
end
