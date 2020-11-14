require_relative 'config/environment'

class App < Sinatra::Base #inherits from sinatra
  get '/reverse' do 
    erb :reverse 
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed #posts to same page as it gets from but erbs are differend so have different views
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth'] #passing in an array
    erb :friends
  end
end
