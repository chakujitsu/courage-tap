cask "courageux" do
  arch arm: "arm64", intel: "x64"

  version "1.90.121"
  sha256 arm:   "c49cc224825e3fe03df9290b9c96986dbbd6a60107290a69d2095c75a099d9b6",
         intel: "7110adbce192e9836aa235dfcea5e87e96f6d3b5c5589864bc6798e79b82d4ad"

  # Update these two lines with your repository details
  url "https://github.com/chakujitsu/courage-tap/releases/download/v#{version}/Brave-Browser-#{arch}.dmg"
  homepage "https://github.com/chakujitsu/courage-tap"

  name "Courageux (Brave Mirror)"
  desc "Web browser focusing on privacy"

  livecheck do
    url "https://github.com/chakujitsu/courage-tap/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Caches/BraveSoftware/Brave-Browser",
    "~/Library/Caches/com.brave.Browser",
    "~/Library/HTTPStorages/com.brave.Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ],
  rmdir: [
    "~/Library/Application Support/BraveSoftware",
    "~/Library/Caches/BraveSoftware",
  ]
end
