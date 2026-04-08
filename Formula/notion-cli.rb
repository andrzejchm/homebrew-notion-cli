# typed: false
# frozen_string_literal: true

class NotionCli < Formula
  desc "Read Notion pages and databases from the terminal"
  homepage "https://github.com/andrzejchm/notion-cli"
  url "https://registry.npmjs.org/@andrzejchm/notion-cli/-/notion-cli-0.13.0.tgz"
  sha256 "156da3d1659adc265f47df3a78254adb136f7c5c170f09e5d79c6e43f61de859"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/notion --version")
  end
end
