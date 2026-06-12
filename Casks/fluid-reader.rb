cask "fluid-reader" do
  version "0.1.0"
  sha256 "c151f7e67301b83ba326eb1a3d5bece30c67e65492fff5effdccadebf135f2b9"

  url "https://github.com/hulgarhulgar23-gif/fluid-reader/releases/download/v#{version}/FluidReader.zip"
  name "Fluid Reader"
  desc "Local-first menu-bar app that reads and acts on screen content"
  homepage "https://github.com/hulgarhulgar23-gif/fluid-reader"

  # Means Sonoma or newer (Homebrew's default comparator is >=).
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "FluidReader.app"

  caveats <<~EOS
    Fluid Reader releases are not notarized by Apple yet. On first launch,
    right-click FluidReader.app, choose Open, then click Open again.

    The app needs Screen Recording and Accessibility permissions for OCR
    capture and reading selections; macOS prompts on first use.
  EOS

  zap trash: [
    "~/Library/Preferences/dev.oss.fluidreader.plist",
  ]
end
