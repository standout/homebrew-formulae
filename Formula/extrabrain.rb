class Extrabrain < Formula
  desc "A CLI for https://extrabrain.se"
  homepage "https://extrabrain.se"
  url "https://github.com/standout/ExtraBrainCLI/archive/1.1.3.tar.gz"
  sha256 "a4829d07489876a978297e9834fc5fa0f7f264a8268ab0b1a2e89a2861b2a7bb"

  head "https://github.com/standout/ExtraBrainCLI.git"

  depends_on xcode: ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/eb"
  end
end
