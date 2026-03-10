cask "berth" do
  version "0.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/berth-app/berth/releases/download/app-v#{version}/Berth_#{version}_universal.dmg"
  name "Berth"
  desc "Mac-native deployment control plane for AI-generated code"
  homepage "https://getberth.dev"

  depends_on macos: ">= :ventura"

  app "Berth.app"

  zap trash: [
    "~/Library/Application Support/com.berth.app",
    "~/.berth",
  ]
end
