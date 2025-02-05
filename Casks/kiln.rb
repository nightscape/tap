cask "kiln" do
  version "0.10.0"
  sha256 "b94c5e75946d73ad5d9ea076509f71b0ddc04fbef34c780f793c375fa946adba"

  url "https://github.com/Kiln-AI/Kiln/releases/download/v#{version}/Kiln.MacOS.AppleSilicon.M-Processor.dmg", verified: "github.com/Kiln-AI/Kiln/"
  name "kiln"
  desc "Fine-tune LLM models, generate synthetic data, and collaborate on datasets"
  homepage "https://docs.getkiln.ai/"

  livecheck do
    url "https://github.com/Kiln-AI/Kiln/releases/"
    strategy :GithubReleases
  end

  depends_on macos: ">= :catalina"

  app "Kiln.app"

  zap trash: ""
end
