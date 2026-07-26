cask "zptah" do
  version "0.28.0"
  sha256  "d0d4a6cf7e89f80e0c9034747fce219cdd425899b4553cc567ddcce52b9c1a60"

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
