class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.3/berth-cli-darwin-universal.tar.gz"
  sha256 "f244c939af03da9a436346e2c402fef79d3702920c43c2cda45661bd437af3e2"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
