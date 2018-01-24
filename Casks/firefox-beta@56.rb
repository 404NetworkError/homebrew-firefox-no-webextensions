cask 'firefox-beta@56' do
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

  language 'es-AR' do
    sha256 'd0aac06366a794291cd38d59950d517562fb689807d1c3ea9d78e3001d8303e1'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '24ffbf7a16c69928db981887b6bdea7c08ff699fd912f5abdc101c283baded80'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '0d76fed4b21313d3764019f8dccccb66adee79354a930f82bbcb60c28dfb8662'
    'es-ES'
  end

  language 'fi' do
    sha256 '15a245fd631b3c7ea8af54c93073ace953ac2dae2639ae4ca9677095121337b5'
    'fi'
  end

  language 'fr' do
    sha256 '75d81cd6485043b922902f8c1acb11b2df977516e2761fade361fbfd576f83f8'
    'fr'
  end

  language 'gl' do
    sha256 '2ba8e0b3f4b2bf2eb1fff93364e7cd78f719bcd2d8f7d7bf5266553322be8723'
    'gl'
  end

  language 'in' do
    sha256 'b8ad46cc8a9d19156a0d0d01de4d0969cc770a17cbc06996629cb2470c60c6ea'
    'hi-IN'
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

  language 'pt-BR' do
    sha256 '3043b99413a0216a8338c4331e10162741843a13f9aaa5ff2aa20d8fadfe1923'
    'pt-BR'
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

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  conflicts_with cask: [
                         'firefox',
                         'firefox-esr',
                       ]

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', # May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
