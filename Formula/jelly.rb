class Jelly < Formula
  desc '🪼 Explore & Stream Jellyfin via CLI'
  homepage 'https://github.com/AzureHound/jelly'
  url 'https://github.com/AzureHound/jelly/archive/refs/tags/v3.5.0.tar.gz'
  sha256 '312e2ba5feec45ccf1b3b6aff89c58752271652ccc520965adf8181c752574f8'
  license '0BSD'

  depends_on 'chafa'
  depends_on 'curl'
  depends_on 'fzf'
  depends_on 'jq'
  depends_on 'mpv'
  depends_on 'socat'

  def install
    bin.install 'src/jelly'
    doc.install 'README.md'
    prefix.install 'LICENSE'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jelly --version")
  end
end
