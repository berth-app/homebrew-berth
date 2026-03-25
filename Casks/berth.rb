cask "berth" do
  version "0.5.0"
  sha256 "b18bf0ec7bb0ad7a4d4002ee4afe33237861adf747c2721fd9a9adac9e8d8a0b"

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
