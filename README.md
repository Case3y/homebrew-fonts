# Homebrew Tap: Case3y/fonts

Homebrew casks for fonts by [Case3y](https://github.com/Case3y).

## Installation

```sh
brew install --cask Case3y/fonts/font-sleet-mono
```

Nerd Font patched build (includes icon glyphs for terminal/editor use):

```sh
brew install --cask Case3y/fonts/font-sleet-mono-nerd-font
```

Homebrew taps automatically on first use, and installing by the fully qualified
name trusts only that cask — no extra steps are needed.

To install by short name instead, tap the repository and trust the cask first:

```sh
brew tap Case3y/fonts
brew trust --cask Case3y/fonts/font-sleet-mono
brew install --cask font-sleet-mono
```

Once a cask is installed this way, `brew upgrade --cask font-sleet-mono` and
`brew uninstall --cask font-sleet-mono` work with the short name.

## Available casks

| Cask | Font family | Upstream |
| --- | --- | --- |
| `font-sleet-mono` | Sleet Mono | [Case3y/sleet-mono](https://github.com/Case3y/sleet-mono) |
| `font-sleet-mono-nerd-font` | Sleet Mono Nerd Font, Nerd Font Mono, Nerd Font Propo | [Case3y/sleet-mono](https://github.com/Case3y/sleet-mono) |

Fonts are installed into `~/Library/Fonts` on macOS and `~/.local/share/fonts`
on Linux. On Linux, run `fc-cache -f` if your font manager does not pick them up
immediately.

## Updating and uninstalling

```sh
brew upgrade --cask font-sleet-mono
brew uninstall --cask font-sleet-mono
```

`brew uninstall --cask --zap` is equivalent here: the casks declare
`zap :not_required`, because removing the font file is all that is needed.

## Maintenance

Each cask points at a pinned GitHub release asset and verifies its SHA-256, so
release assets must never be replaced in place — publish a new tag instead.

When upstream publishes a release:

```sh
brew livecheck --cask --tap=Case3y/fonts   # see which casks are outdated
brew bump --cask --tap=Case3y/fonts        # bump version + sha256
```

`brew bump` needs the tap to be trusted (`brew trust Case3y/fonts`), because it
loads every cask in the tap. Add `--open-pr` to push a pull request instead of
editing the working tree.

To add another font, drop a `Casks/font-<name>.rb` file into this repository.
CI runs `brew style`, `brew audit --online --strict` and `brew livecheck` on
every push and pull request.

Casks follow the [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook). A typical
font cask looks like:

```ruby
cask "font-sleet-mono" do
  version "1.00"
  sha256 "<sha256 of the release asset>"

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
```

Notes:

- `font` paths are relative to the extracted archive root and must include the
  archive's own directory (e.g. `SleetMono/SleetMono-Regular.ttf`). Homebrew
  unzips archives with `unzip`, which keeps the top-level directory, so the path
  must match the file's real location inside the zip.
- Keep the `font-` token prefix — Homebrew uses it to classify font casks.

## License

Each cask installs upstream fonts under their own license. Sleet Mono is
[MIT licensed](https://github.com/Case3y/sleet-mono/blob/main/LICENSE).
The cask definitions in this repository are released under the same MIT license.
