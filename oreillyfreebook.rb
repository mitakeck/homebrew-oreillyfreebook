class Oreillyfreebook < Formula
  desc "O'Reilly free ebook downloder"
  url "https://github.com/mitakeck/oreillyfreebook/releases/download/v0.0.4/oreillyfreebook_darwin_amd64"
  sha256 "01c491bf70b15a3e26443635fe411a3556190a7ac4034fb9569a07849cc443d3"

  def install
    system "mv", "$HOME/Library/Caches/Homebrew/oreillyfreebook-64", "$HOME/Library/Caches/Homebrew/oreillyfreebook"
  	bin.install "oreillyfreebook"
  end

  test do
    system "false"
  end
end
