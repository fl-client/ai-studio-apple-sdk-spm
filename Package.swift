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
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/QPShortsPlayer/QPShortsPlayer-1.0.9.xcframework.zip",
            checksum: "4a919026665350c1512f7d175eff28a6a51bf3287f85bc3a5e0381176d97f9d7"
        ),
        .binaryTarget(
            name: "AIStudioCore",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioCore/AIStudioCore-0.0.3.xcframework.zip",
            checksum: "fc183f37dab0cb1f9fe87f96b76b17997c595a7cdcedb28707c4fc1f35a8727b"
        ),
        .binaryTarget(
            name: "AIStudioNetwork",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioNetwork/AIStudioNetwork-0.0.3.xcframework.zip",
            checksum: "811dd0c796a8edac40bf3ad2a68c295daaf95e75a7d2fb941a4fb56ecb7999bc"
        )
    ]
)