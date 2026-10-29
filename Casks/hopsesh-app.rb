# Written by hopsesh's release workflow (scripts/package-manifests.sh); edits are overwritten.
cask "hopsesh-app" do
  version "0.6.4"
  sha256 "6459bc91be9fe8801add106877d5afad2e18df0f8a97e33f3e6ebc7f22336145"

  url "https://github.com/roeehrl/hopsesh/releases/download/v0.6.4/hopsesh-#{version}-macos-universal.dmg"
  name "hopsesh"
  desc "Move Claude Code and Codex sessions between machines and agents"
  homepage "https://codonic.dev/apps/hopsesh"

  auto_updates true
  depends_on macos: :ventura

  app "hopsesh.app"
end
