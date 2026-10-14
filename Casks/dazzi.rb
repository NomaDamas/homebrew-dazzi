cask "dazzi" do
  arch arm: "arm64"

  version "0.1.2"
  sha256 arm: "705161f660cf2d1d89cccf8d2795282b62cc8a9caaa593dd6665e453503066de"

  url "https://github.com/NomaDamas/AutoRAG-app/releases/download/v#{version}/Dazzi-#{version}-#{arch}.dmg",
      verified: "github.com/NomaDamas/AutoRAG-app/"
  name "Dazzi"
  desc "Local-first Finder with AI search over your files, powered by AutoRAG"
  homepage "https://github.com/NomaDamas/AutoRAG-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (electron-updater); brew upgrade only needs to catch up, not fight it.
  auto_updates true
  depends_on arch: :arm64

  app "Dazzi.app"
end
