test-ios:
	set -o pipefail && \
		xcodebuild test \
			-scheme DataLife \
			-destination "platform=iOS Simulator,name=iPhone 16,OS=18.0" clean test | xcpretty

test-macos:
	set -o pipefail && \
		xcodebuild test \
			-scheme DataLife \
			-destination "platform=macOS" \
			clean test | xcpretty
