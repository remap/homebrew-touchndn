# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Touchndn < Formula
  desc "TouchNDN helper code"
  homepage "https://touchndn.com"
  url "https://github.com/remap/TouchNDN/archive/touchndn-helper-0.0.2.tar.gz"
  sha256 "99864c0251426e01bc556fe3f78f7ea0d0ae759b9a540041cc8b940cf5f23714"

  depends_on "spdlog"

  def install
    Dir.chdir("helper")

    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
