# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "kiln" do
  version "0.10.0"
  sha256 "b94c5e75946d73ad5d9ea076509f71b0ddc04fbef34c780f793c375fa946adba"

  url "https://github.com/Kiln-AI/Kiln/releases/download/v#{version}/Kiln.MacOS.AppleSilicon.M-Processor.dmg"
  name "kiln"
  desc "The easiest tool for fine-tuning LLM models, synthetic data generation, and collaborating on datasets."
  homepage "https://docs.getkiln.ai/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://github.com/Kiln-AI/Kiln/releases/"
    strategy :GithubReleases
  end

  depends_on macos: ">= :catalina"

  app "Kiln.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
