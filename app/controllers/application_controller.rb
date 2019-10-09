require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/" do
      erb :super_hero
    end

    post "/team" do
      @team = Team.new(params[:team])

      params[:team][:member].each do |guy|
        Member.new(guy)

      erb :team
    end


end
