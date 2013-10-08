require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Tag < Formula
  homepage ''
  url 'http://www.edwardrosten.com/cvd/tag-20090724.tar.gz'
  sha1 '77ef87ae6b6312972ae77b3e372b15e3d173dd59'

  depends_on 'TooN' 

  def install
    system "./configure", "--prefix=#{prefix}"
    system "chmod", "+x", "install-sh"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
