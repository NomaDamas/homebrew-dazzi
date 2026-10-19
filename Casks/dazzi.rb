cask "dazzi" do
  arch arm: "arm64"

  version "0.1.6"
  sha256 arm: "bbee683e529d73f8cc8618c798571faa60aea463058bd317067980ee2dda3a94"

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
end
