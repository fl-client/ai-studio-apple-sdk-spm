// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AIStudioAppleSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "QPShortsPlayer",
            targets: ["ShortsPlayer"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShortsPlayer",
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/ShortsPlayer/ShortsPlayer-1.0.3.xcframework.zip",
            checksum: "0286bea85666ce51c42a7f5a79872c89cc8edd380c5aba9f646e404f346bede4"
        )
    ]
)
