cask "umbilical" do
  version "1.0.2"
  sha256 "4b3aa05d12a93ceb27624ad01670f7cebea660cfb4b2bd954f661c576eefa52d"

  url "https://github.com/ks1686/umbilical/releases/download/v#{version}/umbilical-#{version}.dmg"
  name "umbilical"
  desc "Download manager that never seeds"
  homepage "https://github.com/ks1686/umbilical"

  auto_updates true
  depends_on macos: :sonoma

  app "umbilical.app"

  zap trash: [
    "~/Library/Caches/me.peapod.umbilical",
    "~/Library/Containers/me.peapod.umbilical.extension",
    "~/Library/HTTPStorages/me.peapod.umbilical",
    "~/Library/Preferences/me.peapod.umbilical.extension.plist",
    "~/Library/Preferences/me.peapod.umbilical.plist",
    "~/Library/Saved Application State/me.peapod.umbilical.savedState",
    "~/Library/WebKit/me.peapod.umbilical",
  ]
end
