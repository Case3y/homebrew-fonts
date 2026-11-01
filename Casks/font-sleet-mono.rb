cask "font-sleet-mono" do
  version "1.101"
  sha256 "3c81e0797adbd20b8ada333ac5448aed08d37373a3a8ea1b525df32e6505a8fa"

  url "https://github.com/Case3y/sleet-mono/releases/download/v#{version}/SleetMono.zip"
  name "Sleet Mono"
  desc "Monospaced typeface with a hand-drawn comic style"
  homepage "https://github.com/Case3y/sleet-mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SleetMono/SleetMono-Bold.ttf"
  font "SleetMono/SleetMono-BoldItalic.ttf"
  font "SleetMono/SleetMono-Italic.ttf"
  font "SleetMono/SleetMono-Regular.ttf"

  zap :not_required
end
