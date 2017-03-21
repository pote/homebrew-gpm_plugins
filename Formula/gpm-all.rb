require 'formula'

class GpmAll < Formula
  homepage 'https://github.com/pote/gpm-all'
  url      'https://github.com/pote/gpm-all/archive/v0.0.1.tar.gz'
  sha256   '4400b8683eba80c4e4b5e2c82d21ef2aff081ee9af7607e9caf1287f6c9a115d'

  depends_on 'gpm'

  def install
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    system 'gpm', 'all', 'version'
  end
end
