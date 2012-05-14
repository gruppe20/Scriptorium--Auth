require 'omniauth-openid'
require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  #OmniAuth.config.full_host = "localhost:3000/login"


  provider :open_id, 
            :store => OpenID::Store::Filesystem.new('/tmp'), 
            :require => 'omniauth-openid', 
            :callback_path => '/login/auth/open_id/callback',
            :identifier => 'pc29-75.iu.hio.no/openid'
end