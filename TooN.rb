require 'formula'

class Toon < Formula
  homepage ''
  url 'https://github.com/edrosten/TooN/tree/TOON_2.1'
  sha1 'fee0814178a87c2cc90a7fea823161bbf29d3cf9'
  head 'https://github.com/edrosten/TooN.git'
  version "2.1"

  def install
    cd 'TOON_2.1' do
      system "./configure", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install" # if this fails, try separate make/make install steps
    end
  end

end
