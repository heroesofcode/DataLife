test:
	set -o pipefail && xcodebuild -workspace DataLife.xcworkspace -scheme "DataLife" -destination "platform=iOS Simulator,name=iPhone 14" clean test | xcpretty

build:
	set -o pipefail && xcodebuild build -scheme "DataLife" -destination "platform=iOS Simulator,name=IPhone 14" | xcpretty
