# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Touchndn < Formula
  desc "TouchNDN helper code"
  homepage "https://touchndn.com"
  url "https://github.com/remap/TouchNDN/archive/touchndn-helper-0.0.1.tar.gz"
  sha256 "b3c87e1b0efa33a4efb43a0f00bd61bc5580d12151efbc02a9c2269bee1deeba"

  def install
    Dir.chdir("helper")

    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
