cask "switchboard" do
  version "1.1.0"
  sha256 "48dbc443044c3f96957d1200900f9bc139d3c9460f701ec9514cb7ea768808ab"

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
