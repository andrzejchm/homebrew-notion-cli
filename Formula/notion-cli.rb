# typed: false
# frozen_string_literal: true

class NotionCli < Formula
  desc "Read Notion pages and databases from the terminal"
  homepage "https://github.com/andrzejchm/notion-cli"
  url "https://registry.npmjs.org/@andrzejchm/notion-cli/-/notion-cli-0.9.1.tgz"
  sha256 "21023b2b90b211cb93d2d2d9be0bcb0eee0229febb66e891953e19336f1efc27"
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
