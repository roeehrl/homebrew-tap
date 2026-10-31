# Written by hopsesh's release workflow (scripts/package-manifests.sh); edits are overwritten.
cask "hopsesh-app" do
  version "0.7.0"
  sha256 "5ba7bcfd849255fb85f41870a4b33f2912a2a626f3e30a6f90f96f47583e7afc"

  url "https://github.com/roeehrl/hopsesh/releases/download/v0.7.0/hopsesh-#{version}-macos-universal.dmg"
  name "hopsesh"
  desc "Move Claude Code and Codex sessions between machines and agents"
  homepage "https://codonic.dev/apps/hopsesh"

  auto_updates true
  depends_on macos: :ventura

  app "hopsesh.app"
end
