require 'formula'

class GpmGit < Formula
  homepage  'https://github.com/technosophos/gpm-git'
  url       'https://github.com/technosophos/gpm-git/archive/v1.0.1.tar.gz'
  sha1      '44db4a6fa4662bfc8bdf59e07eee110317103f90'

  depends_on 'gpm'

  def install
    system 'make', 'install'
  end

  test do
    `gpm git version` =~ '>> gpm-git v1.0.1'
  end
end
