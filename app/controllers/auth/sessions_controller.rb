module Auth
  class SessionsController < ApplicationController
    #Siden vi muligens mottar en POST fra en ekstern server må vi disable forgery i callback
    #protect_from_forgery :except => [:create]
    
    def create
      #raise request.env["omniauth.auth"].to_yaml
      auth = request.env["omniauth.auth"]
      #raise auth.to_yaml
      email = auth["info"]["email"]
      name  = auth["info"]["name"]
      puts "========================!!!=========================================!!!"
      puts session[:caller]
      redirect_to "#{session[:caller]}?email=#{email}&name=#{name}&redirect=#{session[:redirect]}"
    end

  end
end
