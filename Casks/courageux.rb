cask "courageux" do
  arch arm: "arm64", intel: "x64"

  version "1.100.59"
  sha256 arm:   "976e78ec17ee5bc5e758acb7a7ece8fbd36ae0134cfd4e523b2f411b4fcefc02",
         intel: "717ccf8b7aacc31d940c57a59e39ea695be26b6668f64446177dbe938f457f20"

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
