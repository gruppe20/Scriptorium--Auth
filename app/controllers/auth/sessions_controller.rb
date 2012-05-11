module Auth
  class SessionsController < ApplicationController
    #Siden vi muligens mottar en POST fra en ekstern server må vi disable forgery i callback
    #protect_from_forgery :except => [:create]
    
    def create
      #raise request.env["omniauth.auth"].to_yaml
      auth = request.env["omniauth.auth"]
      raise auth.to_yaml
    end

  end
end
