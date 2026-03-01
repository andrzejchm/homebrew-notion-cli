# typed: false
# frozen_string_literal: true

class NotionCli < Formula
  desc "Read Notion pages and databases from the terminal"
  homepage "https://github.com/andrzejchm/notion-cli"
  url "https://registry.npmjs.org/@andrzejchm/notion-cli/-/notion-cli-0.4.0.tgz"
  sha256 "6ff8ac2d5727f9dd0809f0558953cde797569f4ff92316f3bc0195c6bd7836be"
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
