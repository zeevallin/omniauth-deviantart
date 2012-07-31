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

<!-- ## Supported Flows

Supports the Server-side Flow as described in the the [SoundCloud docs](http://developers.soundcloud.com/docs/api/authentication#authorization-code-flow).

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:
```ruby
{
  "provider" => "soundcloud",
  "uid" => 12345678,
  "info" => {
    "name" => "Soundcloud User",
    "nickname" => "soundclouder",
    "image" => "https://the.image.url",
    "location" => "Soundcloud Town"
  },
  "credentials" => {
    "token" => "123-321",
    "expires" => false
  },
  "extra" => {
    "raw_info" => {
      "id" => 12345678,
      "kind" => "user",
      "permalink" => "soundclouder",
      "username" => "soundclouder",
      "full_name" => "Soundcloud User",
      "uri" => "https://api.soundcloud.com/users/12345678",
      "permalink_url" => "http://soundcloud.com/soundclouder",
      "avatar_url" => "https://the.image.url",
      "country" => "United States",
      "city" => "Soundcloud Town",
      "online" => true,
      "track_count" => 23,
      "playlist_count" => 12,
      "public_favorites_count" => 123,
      "followers_count" => 321,
      "followings_count" => 234,
      "plan" => "Free",
      "private_tracks_count" => 0,
      "private_playlists_count" => 0,
      "primary_email_confirmed" => true
    }
  }
}
```

## License

Copyright (c) 2011 by Lee Martin and SoundCloud

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. -->