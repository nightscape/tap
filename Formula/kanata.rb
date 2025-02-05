class Kanata < Formula
  desc "Improve keyboard comfort and usability with advanced customization"
  homepage "https://github.com/jtroo/kanata"
  version "1.7.0"
  url "https://github.com/jtroo/kanata/archive/refs/tags/v#{version}.tar.gz"
  sha256 "eb7e11511f77558d72b5b3b0c9defb04b269637e5c8a4ad9b45d21382e9247d2"
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
