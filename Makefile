test:
	set -o pipefail && xcodebuild test -scheme "DataLife" -destination "platform=iOS Simulator,name=IPhone 14" clean test | xcpretty

build:
	set -o pipefail && xcodebuild build -scheme "DataLife" -destination "platform=iOS Simulator,name=IPhone 14" | xcpretty
