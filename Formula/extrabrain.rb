class Extrabrain < Formula
  desc "A CLI for https://extrabrain.se"
  homepage "https://extrabrain.se"
  url "https://github.com/standout/ExtraBrainCLI/archive/1.1.4.tar.gz"
  sha256 "40c59dc7ed90f02e5d4561908860787ce15e4824839eb20226deb611a9288ecd"

  head "https://github.com/standout/ExtraBrainCLI.git"

  depends_on xcode: ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/eb"
  end
end
