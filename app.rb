require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc',
    'Malala Yousafzai', 'Sojourner Truth']
    <% @friends.each do |friend| %>
    	<h2><%= friend %></h2>
    <% end %>

    erb :friends

  end
end
