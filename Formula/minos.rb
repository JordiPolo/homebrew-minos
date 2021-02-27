class MinosBin < Formula
  version '0.3.3'
  desc "Minos generates scenarios based on the information in an OpenAPI v3 file. These scenarios can then be displayed, used as a test suite or used as a performance suite."
  homepage "https://github.com/JordiPolo/minos"

  if OS.mac?
      url "https://github.com/JordiPolo/minos/releases/download/v#{version}/minos-x86_64-apple-darwin.tar.gz"
      sha256 "7e8392310370756402a98e49d51e20955466e9af04623e0a0f6e707ace62e9ab"
  elsif OS.linux?
      url "https://github.com/JordiPolo/minos/releases/download/v#{version}/minos-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ee7a07408ef8c1f6f9336fbfde7799259e749a15d21822b7efbe224c9c7d609"
  end

  def install
    bin.install "minos"
  end

  test do
    system "#{bin}/minos --version"
  end
end
