require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end
    
  

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        # @hero_name = params[:team][:members][][:name]
        # @hero_power = []
        # @hero_biography = []
        @team_member = params[:team][:members]

     
        erb :team
    end

    # get '/teams' do
    #     erb :team
    # end

   

end
