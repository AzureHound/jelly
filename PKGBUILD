# Maintainer: AzureHound <183492338+AzureHound@users.noreply.github.com>
pkgname=jelly
pkgver=3.0.2
pkgrel=1
pkgdesc="Explore & Stream Jellyfin from Terminal 🪼"
arch=('any')
url="https://github.com/AzureHound/jelly"
license=('0BSD')
depends=('bash' 'curl' 'fzf' 'jq' 'mpv' 'socat')
source=("$pkgname-$pkgver.tar.gz::https://github.com/AzureHound/jelly/archive/refs/tags/v$pkgver.tar.gz")
sha256sums=('52b72a2cef7e07bd3b41d10028ace8cad7f5aaf4')

build() {
  cd "$srcdir/$pkgname-$pkgver"
}

check() {
  cd "$srcdir/$pkgname-$pkgver"
}

package() {
  cd "$srcdir/$pkgname-$pkgver"
  # app
  install -Dm755 src/jelly "$pkgdir/usr/bin/jelly"
  # docs
  install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
