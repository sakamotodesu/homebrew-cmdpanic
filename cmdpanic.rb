class Cmdpanic < Formula
  desc "A command line whack-a-mole game"
  homepage "https://github.com/sakamotodesu/cmdpanic"
  url "https://github.com/sakamotodesu/cmdpanic/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "YOUR_SHA256_HERE" # リリース時に更新する必要があります

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/cmdpanic", "--help"
  end
end 