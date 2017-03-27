class Inspectrum < Formula
  desc "offline radio signal analyser"
  homepage "https://github.com/miek/inspectrum"
  url "https://github.com/miek/inspectrum/archive/v0.2.tar.gz"
  sha256 "50b7db9b86208f414c387700a358eb58364094f3e8a4985f586f4f815645898a"

  depends_on "cmake" => :build
  depends_on "fftw"
  depends_on "liquid-dsp"
  depends_on "pkg-config" => :build
  depends_on "qt5"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/inspectrum", "-h"
  end
end
