test-ios:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination "platform=iOS Simulator,name=IPhone 14" clean test | xcpretty

test-macos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination platform="macOS" clean test | xcpretty

test-tvos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination platform="tvOS Simulator,name=Apple TV 4K" clean test | xcpretty
