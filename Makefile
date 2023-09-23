test:
	set -o pipefail && xcodebuild test -scheme "DataLife" -destination "platform=iOS Simulator,name=IPhone 14" clean test | xcpretty

test-ios:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination "platform=iOS Simulator,name=IPhone 14"

test-macos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination platform="macOS" \

test-tvos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination platform="tvOS Simulator,name=Apple TV 4K"
