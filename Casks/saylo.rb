cask "saylo" do
  version "1.3.0"
  sha256 "84e575d8d0bd5d5b6386b4a81314c46965a251ca571eb89ad049fdaafd4b285b"

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
