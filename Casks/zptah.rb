cask "zptah" do
  version "0.1.1"
  sha256 "e3bdc0d0c4ba925f773b9e7c5ae27a8807e01c26e8b594ab2a41900302f93be1"

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
