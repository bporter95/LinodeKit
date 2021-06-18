// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LinodeKit",
    products: [
        .library(
            name: "LinodeKit",
            targets: ["LinodeKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LinodeKit",
            dependencies: []),
        .testTarget(
            name: "LinodeKitTests",
            dependencies: ["LinodeKit"]),
    ]
)
