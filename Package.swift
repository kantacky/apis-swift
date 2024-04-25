// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "apis-swift",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .watchOS(.v10),
        .tvOS(.v17),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "KantackyAPIs", targets: ["KantackyAPIs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/connectrpc/connect-swift.git", .upToNextMajor(from: "0.1.0")),
    ],
    targets: [
        .target(
            name: "KantackyAPIs",
            dependencies: [
                .product(name: "Connect", package: "connect-swift"),
            ]
        ),
    ]
)
