class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.5.0/berth-cli-darwin-universal.tar.gz"
  sha256 "b2ca0494263ed635140d56163959de712c3ff42ab30ffe8e9fcd1f7c5609f70e"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
