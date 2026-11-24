cask "zptah" do
  version "0.1.0"
  sha256 "1be0db93163126099311b7ea25bc1fd39346400f5e859beab8e927c4ec499e6d"

  url "https://github.com/hhoangg/zptah/releases/download/native-v#{version}/zptah_#{version}_aarch64.zip"
  name "zptah"
  desc "One UI for every agent harness"
  homepage "https://zptah.app"

  livecheck do
    url "https://github.com/hhoangg/zptah/releases"
    regex(/^native-v(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "zptah.app"
end
