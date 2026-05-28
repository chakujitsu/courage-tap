cask "courageux" do
  arch arm: "arm64", intel: "x64"

  version "1.90.128"
  sha256 arm:   "08321ab43021a670536ec1ea74ce6bc0b7bfa1a85db38172ae62342b07bc7b37",
         intel: "46ad474f19baa6d71f76b814344bf012a515930665c865c21aa0e51586a0b624"

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
