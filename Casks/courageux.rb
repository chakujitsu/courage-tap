cask "courageux" do
  arch arm: "arm64", intel: "x64"

  version "1.87.190"
  sha256 arm:   "a5c1affcd0a6497429fb4fda45b2c13835724b7a1f66e6dbfab773aa94d33a43",
         intel: "5b75bff6127baf83fa8b73c278393f78245290f88147c3232ede4536c08843be"

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
