class KineticMerge < Formula
  desc "Merge a heavily refactored codebase and stay sane."
  homepage "http://github.com/sageserpent-open/kineticMerge"
  url "http://github.com/sageserpent-open/kineticMerge/releases/download/v1.3.0/kinetic-merge"
  version "1.3.0"
  sha256 "65c507018a7f0d2e246c81749848a8e67a0c2fa0e7f6d27fc5d097d6cfd5a590"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"].shift => "kinetic-merge"
    chmod 0555, libexec/"kinetic-merge"
    (bin/"kinetic-merge").write_env_script libexec/"kinetic-merge", Language::Java.overridable_java_home_env
  end

  test do
    assert_match "kinetic-merge #{version}", shell_output("#{bin}/kinetic-merge --help")
  end
end
