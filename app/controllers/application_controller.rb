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
        isLoggedIn?
    end

    def add_to_roster
        
    end

    private

    def isLoggedIn?
        if session[:name]
        else
            redirect_to '/login'
        end
    end

    protect_from_forgery with: :exception
end
