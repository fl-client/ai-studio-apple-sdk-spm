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
            url: "https://firstlight.jfrog.io/artifactory/ai-studio-apple-sdk-swift-local/Release/QPShortsPlayer/QPShortsPlayer-1.0.7.xcframework.zip",
            checksum: "c353519eac99152cd10f8aff1f1e4248432dee6529bb6855b42260d7c3b27b4a"
        ),
        .binaryTarget(
            name: "AIStudioCore",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioCore/AIStudioCore-0.0.2.xcframework.zip",
            checksum: "390aa69ff03d8781b08399032becd6d8e9b07e7c4b9282f1956695f651ec1d9a"
        ),
        .binaryTarget(
            name: "AIStudioNetwork",
            url: "https://firstlight.jfrog.io/artifactory/ai-stud-core-apple-swift-local/Release/AIStudioNetwork/AIStudioNetwork-0.0.2.xcframework.zip",
            checksum: "8e6b06d02a000255542e4f120f1845ef0ecf7c1a2d0f575864aaaab9ca50ef7e"
        )
    ]
)