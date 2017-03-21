require 'formula'

class GpmGit < Formula
  homepage  'https://github.com/technosophos/gpm-git'
  url       'https://github.com/technosophos/gpm-git/archive/v1.0.1.tar.gz'
  sha256    '5e373ac9f83df1027c43946b023760b8d4cdd843fa50a41219dbb29a5331a017'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm git version` =~ '>> gpm-git v1.0.1'
  end
end
