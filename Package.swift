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
            name: "QPShortsPlayer",
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/QPShortsPlayer/QPShortsPlayer-1.0.10.20260415131611.xcframework.zip",
            checksum: "3ced9a7984d9c962b71d28d1b01914ab749e03c36f9e1786707e82308ea11bbd"
        ),
        .binaryTarget(
            name: "AIStudioCore",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioCore/AIStudioCore-0.0.5.xcframework.zip",
            checksum: "6d9080353fb02e03779e7efb65b404c5c2e459c1fb4049675de14aa598bcfece"
        ),
        .binaryTarget(
            name: "AIStudioNetwork",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioNetwork/AIStudioNetwork-0.0.5.xcframework.zip",
            checksum: "f602bf2999a6cd82c9d5cd61916963f7e49dca15dfb016d3e51b181edf9ac088"
        )
    ]
)