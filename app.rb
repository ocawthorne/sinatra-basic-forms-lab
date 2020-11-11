require_relative 'config/environment'

class App < Sinatra::Base

    get('/') {erb :index}
    get('/new') {erb :create_puppy}
    post('/puppy') {@puppy = Puppy.new(params[:name],params[:age],params[:breed]) ; erb :display_puppy}

end
