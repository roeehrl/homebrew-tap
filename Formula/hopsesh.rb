# Written by hopsesh's release workflow (scripts/package-manifests.sh); edits are overwritten.
class Hopsesh < Formula
  desc "Move Claude Code and Codex sessions between machines and agents"
  homepage "https://github.com/roeehrl/hopsesh"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.6.4/hopsesh_0.6.4_darwin_arm64.tar.gz"
      sha256 "988282129ddd2ea4552f220cc24508f3942c6aba0f4ca5899ad000bfa6634847"
    end
    on_intel do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.6.4/hopsesh_0.6.4_darwin_amd64.tar.gz"
      sha256 "580701c0a29c8642a2d31291e00b34a02fd69defc99daf6c5a903d2bd57e248d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.6.4/hopsesh_0.6.4_linux_arm64.tar.gz"
      sha256 "a2e2342c4f193589d59679141d1aaa977b27cfe4ffe4ce727a134e61cfa9524f"
    end
    on_intel do
      url "https://github.com/roeehrl/hopsesh/releases/download/v0.6.4/hopsesh_0.6.4_linux_amd64.tar.gz"
      sha256 "4ff4eab4e9f59ba7d93e4bbf93b687c682189111ae6f7b3aa8fb64ccb8dd1541"
    end
  end

  def install
    bin.install "hopsesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopsesh version")
  end
end
