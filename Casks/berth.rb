cask "berth" do
  version "0.4.6"
  sha256 "4f41b0259177ed3821f1153f6f5dc4f7f112e537056efb1025f114dc6214ef61"

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
