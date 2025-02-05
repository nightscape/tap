class KineticMerge < Formula
  desc "Merge a heavily refactored codebase and stay sane."
  homepage "http://github.com/sageserpent-open/kineticMerge"
  version "1.5.1"
  url "http://github.com/sageserpent-open/kineticMerge/releases/download/v#{version}/kinetic-merge"
  sha256 "bb06f91a0a8fbc50dfbd9d439a2edf3f62cd5ff6d7d0e162f2a7266b54eb43cf"
  license "MIT"

  depends_on "openjdk"

  livecheck do
    url "https://github.com/sageserp-open/kineticMerge/releases/"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    libexec.install Dir["*"].shift => "kinetic-merge"
    chmod 0555, libexec/"kinetic-merge"
    (bin/"kinetic-merge").write_env_script libexec/"kinetic-merge", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "kinetic-merge #{version}", shell_output("#{bin}/kinetic-merge --help")
  end
end
