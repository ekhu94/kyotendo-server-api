class WelcomeController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        render json: {message: 'Welcome to Kyotendo.'}
    end
end
