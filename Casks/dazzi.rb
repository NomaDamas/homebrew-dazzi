cask "dazzi" do
  arch arm: "arm64"

  version "0.1.4"
  sha256 arm: "46d91c33c00715b77365eadc9e3a553ccda7f063b3ae8fa26a2a0ede01bd3b0d"

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
