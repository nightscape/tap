class Kanata < Formula
  desc "Improve keyboard comfort and usability with advanced customization"
  homepage "https://github.com/jtroo/kanata"
  url "https://github.com/jtroo/kanata/archive/refs/tags/v1.6.1.tar.gz"
  version "1.6.1"
  sha256 "c0e047197af23cf434adf20e21a871b7b12c876b58ac75852d662c004bf49f2c"
  license "LGPL-3.0-or-later"
  head "https://github.com/jtroo/kanata.git", branch: "main"

  depends_on "rust" => :build
  depends_on "rustup-init" => :test

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kanata --version")
  end
end
