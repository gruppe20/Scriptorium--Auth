module Auth
  class SessionsController < ApplicationController
    #Siden vi muligens mottar en POST fra en ekstern server må vi disable forgery i callback
    #protect_from_forgery :except => [:create]
    
    def create
      auth = request.env["omniauth.auth"]
      email = auth["info"]["email"]
      name  = auth["info"]["name"]

      redirect_to "#{session[:caller]}?email=#{email}&name=#{name}&redirect=#{session[:redirect]}"
    end

  end
end
