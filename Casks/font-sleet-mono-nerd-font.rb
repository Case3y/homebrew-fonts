cask "font-sleet-mono-nerd-font" do
  version "1.100"
  sha256 "13b10a12b544d172d10e3d835001de65590a83d1b474b50b50aa725024137bde"

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
