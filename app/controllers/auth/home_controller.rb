module Auth
  class HomeController < ApplicationController
    def index
      session[:caller] = params[:caller]
      session[:redirect] = params[:redirect] if params[:redirect]
    end
  end
end
