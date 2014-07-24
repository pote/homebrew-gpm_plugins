require 'formula'

class GpmBootstrap < Formula
  homepage 'https://github.com/pote/gpm-all'
  url      'https://github.com/pote/gpm-all/archive/v0.0.1.tar.gz'
  sha1     'ae11086086058aaa2ae011f75eb3aac78ebf4d53'

  depends_on 'gpm'

  def install
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    system 'gpm', 'all', 'version'
  end
end
