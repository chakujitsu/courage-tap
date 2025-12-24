cask "courageux" do
  arch arm: "arm64", intel: "x64"

  version "1.85.118.0"
  sha256 arm:   "9cc98520ce3abf7d00aec9086ed65cc41c0d77e82d1b30d008c69b72b536ad3c",
         intel: "b5f8c4629640db2d16ebd236561e62e8591353f0b63560b02c54c29b7fcc20a0"

  # Update these two lines with your repository details
  url "https://github.com/chakujitsu/bravoure/releases/download/#{version}/Brave-Browser-#{arch}.dmg"
  homepage "https://github.com/chakujitsu/bravoure"

  name "Courageux (Brave Mirror)"
  desc "Web browser focusing on privacy"

  livecheck do
    url "https://github.com/chakujitsu/bravoure/releases/latest"
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
