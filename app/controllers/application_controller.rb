class ApplicationController < ActionController::Base
    def home
        isLoggedIn?
        @players = User.where(name: session[:name]).first.players
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
