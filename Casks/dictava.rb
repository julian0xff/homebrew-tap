cask "dictava" do
  version "0.5.0"
  sha256 "1d4051b391ebe83c0c89f3ed20afa5dc9cf3c98e296c77c402ed19bcb764b63b"

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
