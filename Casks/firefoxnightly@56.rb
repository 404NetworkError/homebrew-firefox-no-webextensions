cask 'firefoxnightly@56' do
  version '56.0a1'

  language 'cs' do
    sha256 '9c40891ac09dcf8dfcdfa7f3d6d8b681f417240903520d1a212e9fb2e46a72b5'
    'cs'
  end

  language 'en', default: true do
    sha256 'b817b1f15ae1f9e7823e205ab72443de8dbd4b774a2e782151f462ac590e8166'
    'en-US'
  end

  language 'ja' do
    sha256 '39030556f8b8aab05053fd047c70d02d07c05cc8245dd0a69ada222d3c36e8d8'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '8b1d52cbd27aca6a6f475f51f9998233e586e341ba2bec4f92f889d8cee9c7d3'
    'ru'
  end

  language 'uk' do
    sha256 '7c484dc0e1b5421b14a64fea7b4877a70eb9446452ddcda578c26bfaaa6db8ec'
    'uk'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/nightly was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/nightly/2017/08/2017-08-01-10-03-11-mozilla-central#{language == 'en-US' ? '' : '-l10n'}/firefox-#{version}.#{language}.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#nightly'

  app 'FirefoxNightly.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
