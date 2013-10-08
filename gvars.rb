require 'formula'

class Gvars < Formula
  homepage 'http://www.edwardrosten.com/cvd/gvars3.html'
  url 'http://www.edwardrosten.com/cvd/gvars-3.0.tar.gz'
  sha1 '215d68f2358062d83ac86b14ec2944513b15b62b'
  head 'https://github.com/edrosten/gvars.git'

  depends_on :x11
  depends_on 'toon' => :recommended
  depends_on 'fltk' => :optional
  depends_on 'readline'

  def x11flags
    build.with?('x11') ? '--with-x' : ''
  end

  def toonflags
    build.with?('toon') ? '--with-TooN' : ''
  end

  def fltkflags
    build.without?('fltk') ? '--disable-fltk' : ''
  end

  def install
    system "./configure", "--prefix=#{prefix}", x11flags, toonflags, fltkflags
    system "make", "install"
  end
end
