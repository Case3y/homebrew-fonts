cask "font-sleet-mono" do
  version "1.00"
  sha256 "e9063e918c76337900f0bb0ccc0ad94e4228988cc356ea52c2f651c6f4210842"

  url "https://github.com/Case3y/sleet-mono/releases/download/v#{version}/SleetMono.zip"
  name "Sleet Mono"
  desc "Monospaced typeface with a hand-drawn comic style"
  homepage "https://github.com/Case3y/sleet-mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SleetMono/SleetMono-Regular.ttf"

  zap :not_required
end
