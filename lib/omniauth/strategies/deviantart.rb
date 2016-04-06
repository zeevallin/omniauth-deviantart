require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class DeviantArt < OmniAuth::Strategies::OAuth2
      
      option :client_options, {
        :site => 'https://www.deviantart.com/oauth2',
        :authorize_url => 'https://www.deviantart.com/oauth2/authorize',
        :token_url => 'https://www.deviantart.com/oauth2/token'
      }

      uid { raw_info['username'] }
      
      info do
        {
          'name' => raw_info['profile']['real_name'],
          'nickname' => raw_info['username'],
          'image' => raw_info['usericonurl']
        }
      end

      extra do
        { :raw_info => raw_info }
      end
      
      def raw_info
        @raw_info ||= access_token.get('https://www.deviantart.com/api/v1/oauth2/user/whoami', params: { token: access_token.token }).parsed
      end
      
    end
  end
end

OmniAuth.config.add_camelization 'deviantart', 'DeviantArt'
