class BerthCli < Formula
  desc "CLI for Berth deployment control plane"
  homepage "https://getberth.dev"
  url "https://github.com/berth-app/berth/releases/download/app-v0.4.0/berth-cli-darwin-universal.tar.gz"
  sha256 "feb4899f6a46411a9ba6876e60658c0d0afc56daf4ea87f0103a2ee74586dc03"

  def install
    bin.install "berth-cli-darwin-universal" => "berth"
  end

  test do
    system "#{bin}/berth", "--version"
  end
end
