cask "font-sleet-mono" do
  version "1.100"
  sha256 "53534917b8158c12d884fb7754322337b81c9043ac235d55cafdf90efa065bf5"

  url "https://github.com/Case3y/sleet-mono/releases/download/v#{version}/SleetMono.zip"
  name "Sleet Mono"
  desc "Monospaced typeface with a hand-drawn comic style"
  homepage "https://github.com/Case3y/sleet-mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SleetMono/SleetMono-Regular.ttf"
  font "SleetMono/SleetMono-Italic.ttf"
  font "SleetMono/SleetMono-Bold.ttf"
  font "SleetMono/SleetMono-BoldItalic.ttf"

  zap :not_required
end
