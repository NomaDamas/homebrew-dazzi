cask "dazzi" do
  arch arm: "arm64"

  version "0.2.2"
  sha256 arm: "98fadc6c0a116b1dd1ab1255bda286234287f99b3b46a38039b2ffd6b15283cf"

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
