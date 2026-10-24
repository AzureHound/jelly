class Jelly < Formula
  desc '🪼 Explore & Stream Jellyfin via CLI'
  homepage 'https://github.com/AzureHound/jelly'
  url 'https://github.com/AzureHound/jelly/archive/refs/tags/v3.5.2.tar.gz'
  sha256 'ccf563c35b178711a3a5c4f1e16b573fd4f3e7e0bcf2a9ed375e182d1d69f1f0'
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
