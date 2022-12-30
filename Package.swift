// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataLife",
    platforms: [.iOS(.v9), .macOS(.v10_11), .tvOS(.v9)],
    products: [
        .library(
            name: "DataLife",
            targets: ["DataLife"])
    ],
    targets: [
        .target(
            name: "DataLife",
            dependencies: []),
        .testTarget(
            name: "DataLifeTests",
            dependencies: ["DataLife"])
    ]
)
