cask 'firefox-beta' do
  version '56.0b12'

  language 'cs' do
    sha256 '1df7ebc9ef3a8bad5d789945feb1474f3f9f23ea06f29e84f21f550ca3bfe079'
    'cs'
  end

  language 'de' do
    sha256 'b288c015b7c0d52733770734d96f946e3a0b4448b8f95994417bd3cf14e9eb76'
    'de'
  end

  language 'en-GB' do
    sha256 'c2162236239cc00f01898d75058c717980f9856d9de58555e52ae8e2b6a79b97'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '50d96128ddb6a274c432ff5c253581abe0ad4395f079c22f70b69e27c03cad11'
    'en-US'
  end

  language 'fr' do
    sha256 '75d81cd6485043b922902f8c1acb11b2df977516e2761fade361fbfd576f83f8'
    'fr'
  end

  language 'gl' do
    sha256 '2ba8e0b3f4b2bf2eb1fff93364e7cd78f719bcd2d8f7d7bf5266553322be8723'
    'gl'
  end

  language 'it' do
    sha256 'aa72ee447a7e8326581423bc6466e693f158b6a1c9777311698e90e87537270f'
    'it'
  end

  language 'ja' do
    sha256 '01ddf0c099853f4aec3b838de8c704cb18c88e153ef3e8d8c24a581e7a378c3e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '2efb9deabee6b0c45f124334ba4c9dbb9ed2a9ba8de95909b8277c5f9311ef7d'
    'nl'
  end

  language 'pl' do
    sha256 '1d0a14bd19bdc09bacff9094f1f9e56403c356007c70dc2546e26181b21ea2e5'
    'pl'
  end

  language 'pt' do
    sha256 'b828a5e0b1a8487928341d9770dd015de419cac64dda52b86ad2f2464a0443e7'
    'pt-PT'
  end

  language 'ru' do
    sha256 '3bc08da91d7405c3cd9f2d342a848a8577fed69eda2d2b3e31177245a865c3d5'
    'ru'
  end
  language 'uk' do
    sha256 '297534d7c4809de244ad5d28997a04bf969e3e1528aee9aeb5730e70658c38c2'
    'uk'
  end

  language 'zh-TW' do
    sha256 '9f99cf369eaa235a83ec7463cdaa17c1b84e6452f4b3bc476488a465020257ee'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f716c7a5265df09be868aa0e91e519ca9346f5bc57d0f57b69272d21ba76e919'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
