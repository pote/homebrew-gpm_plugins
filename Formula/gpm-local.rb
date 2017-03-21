require 'formula'

class GpmLocal < Formula
  homepage  'https://github.com/technosophos/gpm-local'
  url       'https://github.com/technosophos/gpm-local/archive/1.0.0.tar.gz'
  sha256    '3ed02a31ec6c41ae31d1e2c5909798827f25a94bc6be7bbfb20e91a0519fd427'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm local version` =~ '>> gpm-local v1.0.0'
  end
end
