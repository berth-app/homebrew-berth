class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.5/berth-cli-darwin-universal.tar.gz"
  sha256 "66d00710affa69c5d33795d5c95f83c7e49115a65c2cb357a2ad49528d2aa6c9"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
