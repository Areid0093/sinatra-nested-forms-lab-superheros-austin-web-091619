require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero_name = team[][]
        @hero_power =
        @hero_biography =
        @team_member =



        erb :team
    end

end
