require 'spec_helper'

describe OmniAuth::Strategies::DeviantArt do
  subject do
    OmniAuth::Strategies::DeviantArt.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://www.deviantart.com/oauth2/draft15")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://www.deviantart.com/oauth2/draft15/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://www.deviantart.com/oauth2/draft15/token')
    end
  end
end
