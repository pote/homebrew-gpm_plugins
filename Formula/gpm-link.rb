require 'formula'

class GpmLink < Formula
  homepage  'https://github.com/elcuervo/gpm-link'
  url       'https://github.com/elcuervo/gpm-link/archive/v0.0.1.tar.gz'
  sha256    '89a9cec4be68b04d8f74bd744c7f69e789fb4e41e4399b44aca12f2be8bd4ea8'

  depends_on 'gpm'

  def install
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    `gpm link version` =~ '>> gpm-link v0.0.1'
  end
end
