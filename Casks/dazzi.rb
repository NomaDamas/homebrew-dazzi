cask "dazzi" do
  arch arm: "arm64"

  version "0.2.1"
  sha256 arm: "8d7d56afe16f0b7825a79fa1af15016037f85d74d6c87683e07bdbc56e81dfda"

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
  depends_on macos: :ventura

  app "Dazzi.app"
  # The dazzi command (dazzi <folder> opens it in Dazzi); the app also links it itself on first start, so either order works.
  binary "#{appdir}/Dazzi.app/Contents/Resources/bin/dazzi"
end
