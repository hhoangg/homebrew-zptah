cask "zptah" do
  version "0.3.2"
  sha256 "bdee8fa191507c36fa7648149f701f12bd4efa1bf52c0664e56db3e2e63c230f"

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
