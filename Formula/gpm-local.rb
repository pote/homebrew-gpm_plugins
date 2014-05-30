require 'formula'

class GpmLocal < Formula
  homepage  'https://github.com/technosophos/gpm-local'
  url       'https://github.com/technosophos/gpm-local/archive/1.0.0.tar.gz'
  sha1      '6458dad18badfe76e852cf086720353f7cd1fac1'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm local version` =~ '>> gpm-local v1.0.0'
  end
end
