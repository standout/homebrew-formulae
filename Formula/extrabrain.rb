class Extrabrain < Formula
  desc "A CLI for https://extrabrain.se"
  homepage "https://extrabrain.se"
  url "https://github.com/standout/ExtraBrainCLI/archive/1.1.4.tar.gz"
  sha256 "2036be5d689bc41aa13cc50ea7f556fc8d356845e5fc51a1d0741af5a2244ea2"

  head "https://github.com/standout/ExtraBrainCLI.git"

  depends_on xcode: ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/eb"
  end
end
