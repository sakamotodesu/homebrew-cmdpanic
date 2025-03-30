class Cmdpanic < Formula
  desc "A command line whack-a-mole game"
  homepage "https://github.com/sakamotodesu/cmdpanic"
  url "https://github.com/sakamotodesu/cmdpanic/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "75d3fd5dbec90c86b65589c232f2ab9b30619da65b7e92126082acf462bd456eE"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/cmdpanic", "--help"
  end
end 
