cask "meeting-transcriber" do
  version "1.3.5"
  sha256 "bbac38e31489257b1646c383b978bb2b9400e0e6eb6784520313ccb8c2731472"

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
