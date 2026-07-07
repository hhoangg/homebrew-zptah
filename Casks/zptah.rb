cask "zptah" do
  version "0.7.0"
  sha256  "e8486f1f73762c3bc926da158ba15582ca6a860d123071c4954c1007b9625250"

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
