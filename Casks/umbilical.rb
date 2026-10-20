cask "umbilical" do
  version "1.0.0"
  sha256 "78b70f3dbdc8c0cd08e72a5216aec3c38bd922cd94bbb49e021d590b60a5b1e0"

  url "https://github.com/ks1686/umbilical/releases/download/v#{version}/umbilical-#{version}.dmg"
  name "umbilical"
  desc "Download manager that never seeds"
  homepage "https://github.com/ks1686/umbilical"

  auto_updates true
  depends_on macos: ">= :sonoma"

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
