module Auth
  class HomeController < ApplicationController
    def index
      puts "???=============================================???"
      puts params[:caller]
      session[:caller] = params[:caller]
      session[:redirect] = params[:redirect] if params[:redirect]
    end
  end
end
