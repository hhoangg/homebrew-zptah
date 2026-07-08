cask "zptah" do
  version "0.11.2"
  sha256  "80fc52ed36eb58b03bcb9061c59516ddc2fda1135b31254c112d401c8b53c208"

  url "https://github.com/hhoangg/homebrew-zptah/releases/download/v#{version}/zptah.app.zip"
  name "zptah"
  desc "Native macOS SwiftUI terminal + AI-agent session manager"
  homepage "https://github.com/hhoangg/homebrew-zptah"

  app "zptah.app"

  # Self-signed (no Apple Developer ID): strip the quarantine flag so Gatekeeper
  # lets it launch without a right-click-open dance.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/zptah.app"]
  end

  zap trash: ["~/.zptah"]
end
