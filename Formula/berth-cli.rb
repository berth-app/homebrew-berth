class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.2/berth-cli-darwin-universal.tar.gz"
  sha256 "568689bc12e08f02fe325c181fef724fd95c0e0024f95c8e6dea730700f62c2e"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
