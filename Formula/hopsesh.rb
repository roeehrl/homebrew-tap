# Written by hopsesh's release workflow (scripts/package-manifests.sh); edits are overwritten.
class Hopsesh < Formula
  desc "Move Claude Code and Codex sessions between machines and agents"
  homepage "https://github.com/roeehrl/hopsesh"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.8.0/hopsesh_0.8.0_darwin_arm64.tar.gz"
      sha256 "c21c641f3f9b79fad9cd8a3dea4054337df373fe9de0d65096835be325738ac9"
    end
    on_intel do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.8.0/hopsesh_0.8.0_darwin_amd64.tar.gz"
      sha256 "3dc81eeef652a091042040139d7048888eeefe480962e03551b96df5a168db3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.8.0/hopsesh_0.8.0_linux_arm64.tar.gz"
      sha256 "59ec6470fa6c9d7783e3a3a4b2443591ce3621aa7f7574283539fad0c7c57d21"
    end
    on_intel do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.8.0/hopsesh_0.8.0_linux_amd64.tar.gz"
      sha256 "069b755f5dc72bb6bcac3a8fe1f58f951179bca78e0e8a4d5dc269da4d2596f6"
    end
  end

  def install
    bin.install "hopsesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopsesh version")
  end
end
