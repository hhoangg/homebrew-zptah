cask "zptah" do
  version "3.0.1"
  sha256  "7350fe6d6b91bc01a031483dbdac3ab5041b2f90653c85e2c5dd678e0fbc7d8c"

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
