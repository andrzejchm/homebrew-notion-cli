# typed: false
# frozen_string_literal: true

class NotionCli < Formula
  desc "Read Notion pages and databases from the terminal"
  homepage "https://github.com/andrzejchm/notion-cli"
  url "https://registry.npmjs.org/@andrzejchm/notion-cli/-/notion-cli-0.5.0.tgz"
  sha256 "4b7512369837ca5dfbbe1ff91d5f3105d183bcf88c91fdc2d5b87e087d803954"
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
