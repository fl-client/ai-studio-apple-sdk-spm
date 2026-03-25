// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AIStudioAppleSDK",
    platforms: [.iOS(.v14), .tvOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "QPShortsPlayer",
            targets: ["ShortsPlayer", "AIStudioCore", "AIStudioNetwork"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShortsPlayer",
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/ShortsPlayer/ShortsPlayer-1.0.6.xcframework.zip",
            checksum: "c353519eac99152cd10f8aff1f1e4248432dee6529bb6855b42260d7c3b27b4a"
        ),
        .binaryTarget(
            name: "AIStudioCore",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioCore/AIStudioCore-0.0.2.xcframework.zip",
            checksum: "d9e5b8a7c3e4f1a2b6c8d9e7f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b"
        ),
        .binaryTarget(
            name: "AIStudioNetwork",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioNetwork/AIStudioNetwork-0.0.2.xcframework.zip",
            checksum: "d9e5b8a7c3e4f1a2b6c8d9e7f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b"
        )
    ]
)