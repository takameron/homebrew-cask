cask "jukebox" do
  version "0.9.5"
  sha256 "51b939faee653015932fbe8cb32b9ac6d06482c3b3fdc73d9fb46ed67857ace7"

  url "https://github.com/Jaysce/Jukebox/releases/download/v#{version}/Jukebox.#{version}.dmg",
    verified: "github.com/Jaysce/Jukebox/"
  name "Jukebox"
  desc "A macOS app to view the currently playing song in the menu bar"
  homepage "www.jaysce.dev/projects/jukebox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Jukebox.app"

  uninstall quit: "dev.jaysce.Jukebox"

  zap trash: [
    "~/Library/HTTPStorages/dev.jaysce.Jukebox",
    "~/Library/Preferences/dev.jaysce.Jukebox.plist",
  ]
end
