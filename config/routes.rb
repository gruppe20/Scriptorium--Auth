Auth::Engine.routes.draw do
  get "home/index"
  #get "/auth/open_id/callback" => "sessions#create", :as => :callback

  root :to => "home#index"

  match "/auth/open_id/callback" => "sessions#create", :as => :callback
end
