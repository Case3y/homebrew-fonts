cask "font-sleet-mono-nerd-font" do
  version "1.00"
  sha256 "c1708481b607d28fc4d1d8c14eac93a3ae213852e7b5140a4d397260b7144253"

  url "https://github.com/Case3y/sleet-mono/releases/download/v#{version}/SleetMono-NerdFonts.zip"
  name "Sleet Mono Nerd Font"
  desc "Monospaced typeface with a hand-drawn comic style, patched with Nerd Font icons"
  homepage "https://github.com/Case3y/sleet-mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SleetMono-NerdFonts/SleetMonoNerdFont-Regular.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontMono-Regular.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontPropo-Regular.ttf"

  zap :not_required
end
