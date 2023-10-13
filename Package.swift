// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "JamesuKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "JamesuKit", targets: ["JamesuKit"])
    ],
    targets: [
        .target(name: "JamesuKit"),
        .testTarget(name: "JamesuKitTests", dependencies: ["JamesuKit"])
    ]
)
