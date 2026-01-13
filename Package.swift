// swift-tools-version: 6.1
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
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/ShortsPlayer/ShortsPlayer-1.0.6.xcframework.zip",
            checksum: "c353519eac99152cd10f8aff1f1e4248432dee6529bb6855b42260d7c3b27b4a"
        )
    ]
)
