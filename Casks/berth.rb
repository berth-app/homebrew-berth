cask "berth" do
  version "0.4.7"
  sha256 "e94d7837d192a290e37d7af59e028708e783ef56c31cee1e9cfc6bb921fcc3c4"

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
