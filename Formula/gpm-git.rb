require 'formula'

class GpmGit < Formula
  homepage  'https://github.com/technosophos/gpm-git'
  url       'https://github.com/technosophos/gpm-git/archive/1.0.0.tar.gz'
  sha1      'fe1e6758667ee2aec38e1ee7acf9b79bc64fe9e1'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm git version` =~ '>> gpm-git v1.0.0'
  end
end
