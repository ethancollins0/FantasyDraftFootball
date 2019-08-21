class ApplicationController < ActionController::Base
    def home
        isLoggedIn?
        if User.where(name: session[:name]).first
            @players = User.where(name: session[:name]).first.players
        else
            @players = []
        end
    end

    def add_player
        @team = User.where(name: session[:name])
        isLoggedIn?
    end

    def add_to_roster
        Player.create()
        render :add_player
    end

    private

    def isLoggedIn?
        if session[:name]
        else
            redirect_to '/login'
        end
    end
end
