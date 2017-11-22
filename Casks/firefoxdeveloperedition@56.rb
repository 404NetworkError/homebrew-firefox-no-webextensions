cask 'firefoxdeveloperedition@56' do
  version '56.0b12'

  language 'cs' do
    sha256 '4d403e367bff67bfe57a9e2c6ac3a4226002bac7999b98a9d55b81fcd72c87fb'
    'cs'
  end

  language 'de' do
    sha256 'd25dd77f9a8fd95ed6d820b149d3f482fd3adbf01b4302ff5f6d25c3ca6c1a4c'
    'de'
  end

  language 'en', default: true do
    sha256 'a41d36bc9d827c541246ff59d34655204e1d779fdcb2429751e7f207bc3e56d8'
    'en-US'
  end

  language 'ja' do
    sha256 'a685c20e5145b37a70081ab51944a7645220d01e46f2e823f32054d46f2f78ca'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '55630999147610037ee9ecc856be9cfdcb343e1a1a0694c16bf31e6f0fe6b5a9'
    'ru'
  end

  language 'uk' do
    sha256 'e36b49e60fa8408357e53cc43893791c94347df5ad27dfe85389bb46c0cff104'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1d42018aae5494e2265eaac709dcf24610f78baf71267210ec74286865b7b67b'
    'zh-TW'
  end

  language 'zh' do
    sha256 '82434ae33f46db95debe7a7c5d03e07324263c6b19b1c6e344afc3d29a0c6e5e'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '49e3db55679be71868aadf43a51d3e58013bbf9a7d49524d1e07f033a2cf4652'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
