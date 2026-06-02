cask "switchboard" do
  version "1.1.0"
  sha256 "65d495356ea98fc8deb8f7fe07d10fa057a4aa306f77809fb61612e41b2b1108"

  url "https://github.com/ikanc/switchboard/releases/download/v#{version}/Switchboard-#{version}.zip"
  name "Switchboard"
  desc "Menu-bar app to start, stop, and watch local dev services"
  homepage "https://github.com/ikanc/switchboard"

  depends_on macos: ">= :ventura"

  app "Switchboard.app"

  zap trash: [
    "~/Library/Application Support/Switchboard",
  ]
end
