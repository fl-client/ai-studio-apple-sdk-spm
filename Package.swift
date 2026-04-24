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
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/QPShortsPlayer/QPShortsPlayer-1.0.12.20260416101438.xcframework.zip",
            checksum: "bec5431c448904e725307d2d5607def0112be150f941acfd1c09853c0528fe4b"
        ),
        .binaryTarget(
            name: "AIStudioCore",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioCore/AIStudioCore-0.0.7.xcframework.zip",
            checksum: "83e783953d2b0d9efcb4e00da1598a4d123f83db8c2b952b7bac9665a79b279a"
        ),
        .binaryTarget(
            name: "AIStudioNetwork",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioNetwork/AIStudioNetwork-0.0.7.xcframework.zip",
            checksum: "1ba92eff59f0c1a956274b50104575d366538cca6c43ac605d4147c30babbe51"
        )
    ]
)