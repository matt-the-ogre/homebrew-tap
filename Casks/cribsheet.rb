cask "cribsheet" do
  version "0.4.2"
  sha256 "006b4144e4d7bc941fe382f2f5b6806ca338def535c7339650cc66b1795f3d2d"

  url "https://github.com/matt-the-ogre/cribsheet-releases/releases/download/v#{version}/Cribsheet-#{version}.zip"
  name "Cribsheet"
  desc "Hold Command to see every keyboard shortcut of the frontmost app"
  homepage "https://mattmanuel.com/cribsheet/"

  depends_on macos: :sonoma

  app "Cribsheet.app"

  uninstall quit: "com.mattmanuel.cribsheet"

  zap trash: "~/Library/Preferences/com.mattmanuel.cribsheet.plist"

  caveats <<~EOS
    Cribsheet reads menus through macOS Accessibility. On first launch,
    grant access in System Settings > Privacy & Security > Accessibility.
  EOS
end
