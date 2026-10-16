cask "courageux" do
  arch arm: "arm64", intel: "x64"

  version "1.97.59"
  sha256 arm:   "4129207d00e568c5dba080bb91cb3b92d5762600391a32b6debb8162518d6b06",
         intel: "1508f2c829033fb22d708bdab3a378867491cb742aa531604821ef371706c6c2"

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
