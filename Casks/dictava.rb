cask "dictava" do
  version "0.8.0"
  sha256 "630b00a6d3b0cdc78515d044718cd99508c73a24f472adb467c13fa56d01c4cb"

  url "https://github.com/julian0xff/Dictava/releases/download/v#{version}/Dictava-#{version}.dmg"
  name "Dictava"
  desc "Local AI-powered voice dictation for macOS"
  homepage "https://github.com/julian0xff/Dictava"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Dictava.app"

  zap trash: [
    "~/Library/Application Support/Dictava",
    "~/Library/Preferences/com.dictava.app.plist",
  ]

  livecheck do
    url :url
    strategy :github_latest
  end
end
