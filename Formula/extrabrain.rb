class Extrabrain < Formula
  desc "A CLI for https://extrabrain.se"
  homepage "https://extrabrain.se"
  url "https://github.com/standout/ExtraBrainCLI/archive/1.1.2.tar.gz"
  sha256 "2389e90efd1f759a4549991dfc3c82cd7a8071a53e6ba41227dc67f9aa8ec86f"

  head "https://github.com/standout/ExtraBrainCLI.git"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/eb"
  end
end
