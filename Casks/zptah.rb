cask "zptah" do
  version "0.18.0"
  sha256  "eab16fc086d885921776ebf32278c254b0ce0268de1797f8335fea1e9b6eeded"

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
