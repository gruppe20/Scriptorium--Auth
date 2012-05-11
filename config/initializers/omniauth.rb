require 'omniauth-openid'
require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id, 
            :store => OpenID::Store::Filesystem.new('/tmp'), 
            :require => 'omniauth-openid', 
            :identifier => 'pc29-75.iu.hio.no/openid'
end