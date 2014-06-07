require 'formula'

class GpmPrebuild < Formula
  homepage  'https://github.com/technosophos/gpm-prebuild'
  url       'https://github.com/technosophos/gpm-prebuild/archive/v1.0.0.tar.gz'
  sha1      'd6b1c4c40cf9fc9df6ae93d6a1e25b00c1b39a51'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm prebuild version` =~ '>> gpm-prebuild v1.0.0'
  end
end
