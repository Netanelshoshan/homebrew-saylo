cask "saylo" do
  version "1.4.0"
  sha256 "1a79e57449bf26bdb049b294ce20623a9707fffed745f2f4416f36b9597f4c5b"

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
