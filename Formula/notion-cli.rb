# typed: false
# frozen_string_literal: true

class NotionCli < Formula
  desc "Read Notion pages and databases from the terminal"
  homepage "https://github.com/andrzejchm/notion-cli"
  url "https://registry.npmjs.org/@andrzejchm/notion-cli/-/notion-cli-0.11.0.tgz"
  sha256 "8d4ee6c105d63141e37c49d7dafb09718202b8cf91956a4b058135229772ce90"
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
