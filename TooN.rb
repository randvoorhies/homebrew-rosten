require 'formula'

class Toon < Formula
  homepage 'http://www.edwardrosten.com/cvd/toon.html'
  url 'https://github.com/edrosten/TooN/archive/TOON_2.1.zip'
  sha1 'f1bc7c2e841c75f590e926cd43dcc76f9bfe4e47'
  head 'https://github.com/edrosten/TooN.git'

  def install
    system "./configure", "--disable-debug",
      "--disable-dependency-tracking",
      "--disable-silent-rules",
      "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

end
