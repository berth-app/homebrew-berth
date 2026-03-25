class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.5.1/berth-cli-darwin-universal.tar.gz"
  sha256 "9e6e50132a9b5898462eb641232148ad8eb8bdc99840bc84fb5fd4e29b2f2a60"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
