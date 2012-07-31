# OmniAuth DeviantArt

This gem contains the DeviantArt strategy for OmniAuth 1.0.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-deviantart', '~> 0.0.1'
```

Then `bundle install`.

## Basic Usage

    use OmniAuth::Builder do
    	provider "deviantart", ENV['DEVIANTART_APP_ID'], ENV['DEVIANTART_SECRET']
    end

## DeviantART Docs

[DeviantART docs here!](http://www.deviantart.com/developers/oauth2).

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:
```ruby
{
  "provider" => "deviantart",
  "uid" => deviantid,
  "info" => {
    "nickname" => "deviantid",
    "image" => "http://a.deviantart.net/avatars/k/o/deviantid.png?15"
  },
  "credentials" => {
    "token" => "123-321",
    "expires" => true,
    "expires_at" => "yyyy-mm-dd hh:mm:ss"
  },
  "extra" => {
    "raw_info" => { "username":"deviantid", "symbol":"~", "usericonurl":"http://a.deviantart.net/avatars/k/o/deviantid.png?15" }
  }
}
```

## License

Copyright (c) 2012 by Philip Vieira and DeviantART

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.