module Auth
  class HomeController < ApplicationController
    def index
      session[:caller] = params[:redirect]
      session[:redirect] = params[:redirect] if params[:redirect]
    end
  end
end
