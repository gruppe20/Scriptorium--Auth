module Auth
  class SessionsController < ApplicationController
 
    def create
      auth = request.env["omniauth.auth"]
      email = auth["info"]["email"]
      name  = auth["info"]["name"]
      nickname = auth["info"]["nickname"]

      redirect_to "#{session[:caller]}?email=#{email}&name=#{name}&nickname=#{nickname}&redirect=#{session[:redirect]}"
    end

  end
end
