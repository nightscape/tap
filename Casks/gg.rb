cask "gg" do
  version "0.23.0"
  sha256 "8b5b4c787c1fe57b56f1ab3fee0d89af7765332e0ed7cb29d6eeba678b057b1d"

  url "https://github.com/gulbanana/gg/releases/download/v#{version}/gg_#{version}_universal.dmg"
  name "gg"
  desc "Gui for JJ"
  homepage "https://github.com/gulbanana/gg"

  livecheck do
    url "https://github.com/gulbanana/gg/releases"
    strategy :GithubReleases
  end

  depends_on macos: ">= :catalina"

  app "GG.app"

  zap trash: [
    "~/Library/Application Support/GG",
    "~/Library/Caches/com.gulbanana.gg",
    "~/Library/Logs/GG",
    "~/Library/Preferences/com.gulbanana.gg.plist",
  ]
end
