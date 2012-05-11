Auth::Engine.routes.draw do
  get "home/index"

  root :to => "home#index"

  match "/auth/open_id/callback" => "sessions#create"#, :as => :callback
end
