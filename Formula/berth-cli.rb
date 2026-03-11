class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.7/berth-cli-darwin-universal.tar.gz"
  sha256 "9b64880c5d06ea086e175eab201ed953b04ce5d25418796c09affd628d3cca90"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
