cask "meeting-transcriber" do
  version "1.3.3"
  sha256 "e9dbc4c2500dca80c55b9264c3075e634c3cef9caaca217634775b2bf51c61eb"

  url "https://meeting-insights-hub-production.up.railway.app/api/download/mac"
  name "Meeting Transcriber"
  desc "Desktop app for Meeting Insights Hub - real-time meeting transcription"
  homepage "https://meeting-insights-hub-production.up.railway.app"

  # Remove quarantine before and after install (app is not code-signed)
  preflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{staged_path}/Meeting Transcriber.app"]
  end

  app "Meeting Transcriber.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Meeting Transcriber.app"]
  end

  zap trash: [
    "~/Library/Application Support/meeting-transcriber",
    "~/Library/Preferences/com.meeting-transcriber.desktop.plist",
  ]
end
