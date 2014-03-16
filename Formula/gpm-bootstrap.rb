require 'formula'

class GpmBootstrap < Formula
  homepage 'https://github.com/pote/gpm-bootstrap'
  url 'https://github.com/pote/gpm-bootstrap/archive/v0.0.1.tar.gz'

  depends_on 'gpm'

  def install
    system './configure', "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    Pathname('main.go').write '
package main

import (
  "fmt"
  "github.com/pote/gpm-testing-package"
)

func main() {
	fmt.Println(gpm_testing_package.Version())
}
    '

    system 'gpm', 'bootstrap'

    `go run go_code.go` == 'v6.2'
    'github.com/pote/gpm-testing-package v6.2' =~ File.read('Godeps')
  end
end
