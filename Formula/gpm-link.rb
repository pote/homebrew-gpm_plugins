require 'formula'

class GpmLink < Formula
  homepage  'https://github.com/elcuervo/gpm-link'
  url       'https://github.com/elcuervo/gpm-link/archive/v0.0.1.tar.gz'
  sha1      '9ada5e562ef4da6f9ec5f4c9d8e6772a02556a7a'

  depends_on 'gpm'

  def install
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    `gpm link version` =~ '>> gpm-link v0.0.1'
  end
end
