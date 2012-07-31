require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class DeviantArt < OmniAuth::Strategies::OAuth2
      
      option :client_options, {
        :site => 'https://www.deviantart.com/oauth2/draft15',
        :authorize_url => 'https://www.deviantart.com/oauth2/draft15/authorize',
        :token_url => 'https://www.deviantart.com/oauth2/draft15/token'
      }

      uid { raw_info['username'] }
      
      info do
        {
          'nickname' => raw_info['username'],
          'image' => raw_info['usericonurl']
        }
      end
            
      extra do
        { :raw_info => raw_info }
      end
      
      def raw_info
        @raw_info ||= access_token.get('/user/whoami').parsed
      end
      #
      # def email
      #   raw_info['email'] || emails.first
      # end
      # 
      # def emails
      #   access_token.options[:mode] = :query
      #   @emails ||= access_token.get('/user/emails').parsed
      # end
      
    end
  end
end

OmniAuth.config.add_camelization 'deviantart', 'DeviantArt'
