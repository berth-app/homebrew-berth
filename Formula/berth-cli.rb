class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.4/berth-cli-darwin-universal.tar.gz"
  sha256 "28210d2b1d86f9dd2cc0e964748b332241c7b7c8a4848a96c24c7a96830c305c"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
