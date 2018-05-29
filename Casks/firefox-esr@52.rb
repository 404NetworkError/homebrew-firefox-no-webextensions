cask 'firefox-esr@52' do
  version '52.8.0'

  language 'cs' do
    sha256 '174ab8d7da43734232d5fdb0783ea98bb4c4f946c200efef7173d8adc53bd429'
    'cs'
  end

  language 'de' do
    sha256 '9d57690a7f326c9824a366d7351983a6c481aee33e8f6ab426b2b2ad0cac9f00'
    'de'
  end

  language 'en-GB' do
    sha256 'd7c4455e07be8afc8ac317fb1a8d2a5fa07ceb1c1987694a46dafcfa8bc47280'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e6e8a7b79db77a64e1a3c6ea75ced968c6e832a6dfc529b69e109c9cd229c6ee'
    'en-US'
  end

  language 'fr' do
    sha256 'cd48069435d5dbdd628a6984259bdb31df057e1b7ec4d701d5107aa0fb22c391'
    'fr'
  end

  language 'gl' do
    sha256 '5304ff4cfefae3821ddccb8d938aa850a0603bf809d0ac0ab41d5e7f1fd267ce'
    'gl'
  end

  language 'it' do
    sha256 '2e76ebf11993cabedb075a3c2fd8dc60acc4f75bf5fde32e60a2f9d49c6b65fb'
    'it'
  end

  language 'ja' do
    sha256 '3069f3d777d120a8692bb541db25942d3d5f3c84cb005c9f3f5907016f7a14c5'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '0994f74e9883a20bbce25fa937397ec630fd2200fbdde93a31f6e10ad39ca1d4'
    'nl'
  end

  language 'pl' do
    sha256 '5a717e9050ab799d853f13b72126dac378299fc99e492550d23689c7ad22223a'
    'pl'
  end

  language 'pt' do
    sha256 '711f5a66e007a8e3ed0ad66ec804a26fe36029bece07bd70dabcfb872b779f55'
    'pt-PT'
  end

  language 'ru' do
    sha256 '29e4c56ef1478458c08a4ab99af97d31651c4f9cea1c63cc36a4861fb04d1dcc'
    'ru'
  end

  language 'uk' do
    sha256 '4a29df0f9fbd7c3c3d0de0ffd0c881e6863b5ffe2540d505b18b421d7d7212de'
    'uk'
  end

  language 'zh-TW' do
    sha256 'acb9915bf40255288372ba90e1fb41fbed748d86912bffd95bfff9711ff9b5cf'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e5d9ef9784f1a80c60189fbb8f3e4c7b674c0f362ac713362f3ba8e8731c3983'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  conflicts_with cask: [
                         'firefox',
                         'firefox-beta',
                       ]

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
