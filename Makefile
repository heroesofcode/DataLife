test:
	set -o pipefail
	xcodebuild -project DataLife.xcodeproj \
           -scheme DataLife-Package \
           -destination platform=iOS\ Simulator,name=iPhone\ 8 \
           clean test | xcpretty
