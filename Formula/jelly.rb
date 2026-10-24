class Jelly < Formula
  desc '🪼 Explore & Stream Jellyfin via CLI'
  homepage 'https://github.com/AzureHound/jelly'
  url 'https://github.com/AzureHound/jelly/archive/refs/tags/v3.5.2.tar.gz'
  sha256 'd5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed'
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
