cask "dazzi" do
  arch arm: "arm64"

  version "0.2.0"
  sha256 arm: "d2618cd977a6e177b2ba885b911b8565c2e2465954784b4659e0e8b3814c3a81"

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
