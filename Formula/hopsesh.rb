# Written by hopsesh's release workflow (scripts/package-manifests.sh); edits are overwritten.
class Hopsesh < Formula
  desc "Move Claude Code and Codex sessions between machines and agents"
  homepage "https://github.com/roeehrl/hopsesh"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.7.0/hopsesh_0.7.0_darwin_arm64.tar.gz"
      sha256 "73f12e862a644f5541b2875cf9106dc6f8cb80d913f555ce26f552b4512194ff"
    end
    on_intel do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.7.0/hopsesh_0.7.0_darwin_amd64.tar.gz"
      sha256 "708c9834f6046ab8045a9ab8133ffd963849d96179bc38950a8a8b483b4fc282"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.7.0/hopsesh_0.7.0_linux_arm64.tar.gz"
      sha256 "8720900536c677d4924871b9b95843ddc2f7b34823b14e4ecf815bd3a222d3a3"
    end
    on_intel do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.7.0/hopsesh_0.7.0_linux_amd64.tar.gz"
      sha256 "4801f34c9e54d6811c6e9175d7e879101397f5dfb8e5f19e30122e06922eba9d"
    end
  end

  def install
    bin.install "hopsesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopsesh version")
  end
end
