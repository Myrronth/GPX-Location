# GPX-Location

Problem: Snapshot does not use the specified gpx file for simulating the current location.

- SUCCEEDS: Building and running (CMD+R) this project on an iOS simulator: Zooms in to "vienna"
- SUCCEEDS: Building and testing (CMD+U) this project on an iOS simulator: Zooms in to "vienna"
- FAILS: Running snapshot: Does not zoom in to vienna and does not show the current location
- FAILS: Running `xcrun xcodebuild -scheme 'GPX Location' -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.2' test`: Does not zoom in to vienna and does not show the current location
