class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.1/berth-cli-darwin-universal.tar.gz"
  sha256 "76c856b512fe7b6d061fdf313e697b6f55e8ecf76e031570321c5a820471bd94"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
