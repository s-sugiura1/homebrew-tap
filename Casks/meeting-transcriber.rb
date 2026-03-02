cask "meeting-transcriber" do
  version "1.0.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/manabi-lab/Meeting-Insights-Hub/releases/download/v#{version}/electron-app-#{version}.dmg"
  name "Meeting Transcriber"
  desc "Desktop app for Meeting Insights Hub - real-time meeting transcription"
  homepage "https://github.com/manabi-lab/Meeting-Insights-Hub"

  app "Meeting Transcriber.app"

  zap trash: [
    "~/Library/Application Support/meeting-transcriber",
    "~/Library/Preferences/com.meeting-transcriber.desktop.plist",
  ]
end
