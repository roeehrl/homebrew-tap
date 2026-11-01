cask "ldmanager" do
  version "0.1.2"
  sha256 "d10d6d6b2a387100fc14e315bc956ef26e32d49d2ab7054a6fcbac0c3d0cc8af"

  url "https://github.com/roeehrl/ldmanager/releases/download/v#{version}/LD-Manager.dmg"
  name "LD Manager"
  desc "See, diagnose and fix launchd agents and daemons"
  homepage "https://codonic.dev/apps/ldmanager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "LD Manager.app"
  binary "#{appdir}/LD Manager.app/Contents/Helpers/ldm"
end
