# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class QuiltNativeInstaller < Formula
  desc "Native installer for the Quilt Loader"
  homepage "https://quiltmc.org"
  url "https://github.com/QuiltMC/quilt-native-installer/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "42d80580dc11e3a883b06633450f8121de704cb0ba24ac56d067f898473eddaa"
  license "apache-2.0"

  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    system "cargo", "install", *std_cargo_args
    mv "#{bin}/quilt-installer", "#{bin}/quilt"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test quilt-native-installer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
