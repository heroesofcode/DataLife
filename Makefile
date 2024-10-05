test-ios:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination "platform=iOS Simulator,name=iPhone 15,OS=17.0" clean test | xcpretty

test-macos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination "platform=macOS,arch=x86_64,OS=14.0" clean test | xcpretty

test-tvos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination "platform=tvOS Simulator,name=Apple TV 4K (3rd generation),OS=17.0" clean test | xcpretty

test-watchos:
	set -o pipefail && \
	xcodebuild test \
		-scheme DataLife \
		-destination "platform=watchOS Simulator,name=Apple Watch Series 8 (41mm),OS=10.0" clean test | xcpretty
