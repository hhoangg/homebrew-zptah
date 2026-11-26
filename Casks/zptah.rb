cask "zptah" do
  version "0.3.0"
  sha256 "73a971e49bcce8291446b70a7a6d8ff806889a0f381f616b08eff21d39c9da4d"

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
