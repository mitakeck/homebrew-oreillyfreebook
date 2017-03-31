VERSION='0.0.4'

class Oreillyfreebook < Formula
  homepage 'https://github.com/mitakeck/oreillyfreebook'
  url 'https://github.com/mitakeck/oreillyfreebook.git', :tag => "v#{VERSION}"
  version VERSION
  head 'https://github.com/mitakeck/oreillyfreebook.git', :branch => 'master'

  depends_on 'go' => :build
  depends_on 'hg' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', 'github.com/PuerkitoBio/goquery'
    mkdir_p buildpath/'src/github.com/mitakeck/oreillyfreebook'
    ln_s buildpath/'search', buildpath/'src/github.com/mitakeck/oreillyfreebook/.'
    system 'go', 'build', '-o', 'oreillyfreebook'
    bin.install 'oreillyfreebook'
  end
end
