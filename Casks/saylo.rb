cask "saylo" do
  version "1.0.1"
  sha256 "35ffb3f3709be52c365d22df5b36e608012ce16354c863ee08b9ecdd6e40e6ea"

  url "https://github.com/netanelshoshan/homebrew-saylo/releases/download/v#{version}/Saylo.dmg"
  name "Saylo"
  desc "On-device voice dictation"
  homepage "https://github.com/netanelshoshan/homebrew-saylo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Saylo.app"

  uninstall quit: "com.netanelio.Saylo"

  zap trash: [
    "~/Library/Application Support/Saylo",
    "~/Library/Caches/com.netanelio.Saylo",
    "~/Library/HTTPStorages/com.netanelio.Saylo",
    "~/Library/HTTPStorages/com.netanelio.Saylo.binarycookies",
    "~/Library/Preferences/com.netanelio.Saylo.plist",
    "~/Library/Saved Application State/com.netanelio.Saylo.savedState",
  ]
end
