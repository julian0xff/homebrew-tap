cask "dictava" do
  version "0.2.2"
  sha256 "PLACEHOLDER"

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
