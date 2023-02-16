class QuiltNativeInstaller < Formula
  desc "Native installer for the Quilt Loader"
  homepage "https://quiltmc.org"
  url "https://github.com/QuiltMC/quilt-native-installer/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "42d80580dc11e3a883b06633450f8121de704cb0ba24ac56d067f898473eddaa"
  license "Apache-2.0"

  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    system "cargo", "install", *std_cargo_args
    mv "#{bin}/quilt-installer", "#{bin}/quilt"
  end

  test do
    system "true"
  end
end
