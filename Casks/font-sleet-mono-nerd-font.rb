cask "font-sleet-mono-nerd-font" do
  version "1.101"
  sha256 "af4e8596edd042390e8ba962260d8ef7e9bb7779d1723ef0bddd724d049e967c"

  url "https://github.com/Case3y/sleet-mono/releases/download/v#{version}/SleetMono-NerdFonts.zip"
  name "Sleet Mono Nerd Font"
  desc "Monospaced typeface with a hand-drawn comic style, patched with Nerd Font icons"
  homepage "https://github.com/Case3y/sleet-mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SleetMono-NerdFonts/SleetMonoNerdFont-Bold.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFont-BoldItalic.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFont-Italic.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFont-Regular.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontMono-Bold.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontMono-BoldItalic.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontMono-Italic.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontMono-Regular.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontPropo-Bold.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontPropo-BoldItalic.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontPropo-Italic.ttf"
  font "SleetMono-NerdFonts/SleetMonoNerdFontPropo-Regular.ttf"

  zap :not_required
end
