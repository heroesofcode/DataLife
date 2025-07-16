// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataLife",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "DataLife",
            targets: ["DataLife"]
        )
    ],
    targets: [
        .target(
            name: "DataLife",
            dependencies: []
        ),
        .testTarget(
            name: "DataLifeTests",
            dependencies: ["DataLife"]
        )
    ]
)

