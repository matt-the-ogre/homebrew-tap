cask "cribsheet" do
  version "0.4.1"
  sha256 "30d9df4add90022b93dc532ffc28e8157393f2cd05dbde8c12913b4660864b71"

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
