# Written by hopsesh's release workflow (scripts/package-manifests.sh); edits are overwritten.
cask "hopsesh-app" do
  version "0.8.0"
  sha256 "c8cb9b720458471098fe72cf3461c039bb560258e6345248f974c6e26091e71c"

  url "https://github.com/roeehrl/hopsesh/releases/download/v0.8.0/hopsesh-#{version}-macos-universal.dmg"
  name "hopsesh"
  desc "Move Claude Code and Codex sessions between machines and agents"
  homepage "https://codonic.dev/apps/hopsesh"

  auto_updates true
  depends_on macos: :ventura

  app "hopsesh.app"
end
