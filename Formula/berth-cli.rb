class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.6/berth-cli-darwin-universal.tar.gz"
  sha256 "8b47fab431fddc0409ac917b8b5e8f8473c59fbad3d792044cf1e4b7e9437087"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
