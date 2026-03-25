cask "berth" do
  version "0.5.1"
  sha256 "921a56baae44655ffc84931bd82e86a27ac93216fe026148a7338fe8ae8f34ef"

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
