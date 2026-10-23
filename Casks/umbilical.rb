cask "umbilical" do
  version "1.0.1"
  sha256 "7f5bbd6d76e2b925d5af7f460adb30df6354153ca7f2512af8245a05e5d671f6"

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
