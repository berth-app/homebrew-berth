cask "berth" do
  version "0.4.1"
  sha256 "d3d15e4b60a5cda5ecc4985187c0f454375ed20ccf11a7b89d3f86c7f1c13942"

  url "https://github.com/berth-app/berth/releases/download/app-v#{version}/Berth_#{version}_universal.dmg"
  name "Berth"
  desc "Mac-native deployment control plane for AI-generated code"
  homepage "https://getberth.dev"

  depends_on macos: ">= :ventura"

  app "Berth.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Berth.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.getberth.berth",
    "~/.berth",
  ]
end
