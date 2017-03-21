require 'formula'

class GpmPrebuild < Formula
  homepage  'https://github.com/technosophos/gpm-prebuild'
  url       'https://github.com/technosophos/gpm-prebuild/archive/v1.0.0.tar.gz'
  sha256    '6674b6b2715fc5a3c499339639afd5f4e165ab353be29a8b4c3f9bd2a341c89f'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm prebuild version` =~ '>> gpm-prebuild v1.0.0'
  end
end
