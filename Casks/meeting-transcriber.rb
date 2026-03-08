cask "meeting-transcriber" do
  version "1.2.0"
  sha256 "f293ab6ed8acdf839371d1d3938ff037ff80edee8149d1791657d06c434ac11c"

  url "https://meeting-insights-hub-production.up.railway.app/api/download/mac"
  name "Meeting Transcriber"
  desc "Desktop app for Meeting Insights Hub - real-time meeting transcription"
  homepage "https://meeting-insights-hub-production.up.railway.app"

  app "Meeting Transcriber.app"

  zap trash: [
    "~/Library/Application Support/meeting-transcriber",
    "~/Library/Preferences/com.meeting-transcriber.desktop.plist",
  ]
end
