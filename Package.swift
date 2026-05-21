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
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/QPShortsPlayer/QPShortsPlayer-1.0.12.xcframework.zip",
            checksum: "ea2f5899fe539b6ba0621dff348d7db7bdc2d335dc5b4e7cd7e3c61eecc3d88a"
        ),
        .binaryTarget(
            name: "AIStudioCore",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioCore/AIStudioCore-0.0.13.xcframework.zip",
            checksum: "5a2e677d8d04391202c99ddcece45a53b691cabaa1dffa9044c72d47bc778969"
        ),
        .binaryTarget(
            name: "AIStudioNetwork",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioNetwork/AIStudioNetwork-0.0.13.xcframework.zip",
            checksum: "5c75934f158c1c7094c3480bdcabfdb91ff574a48dbc0c40c3a7e75727f0ee4b"
        )
    ]
)