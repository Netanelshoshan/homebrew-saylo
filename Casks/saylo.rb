cask "saylo" do
  version "1.3.1"
  sha256 "801e44d008a5b7180f8091b4c75ecc6750790074eb19864c26550e2cb5f8b80a"

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
