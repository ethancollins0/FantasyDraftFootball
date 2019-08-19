class ApplicationController < ActionController::Base
    def home
        if session[:name]
        else
            redirect_to '/login'
        end
    end
    
    protect_from_forgery with: :exception
end
