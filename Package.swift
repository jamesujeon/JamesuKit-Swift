// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "JamesuKit",
    products: [
        .library(name: "JamesuKit", targets: ["JamesuKit"])
    ],
    targets: [
        .target(name: "JamesuKit"),
        .testTarget(name: "JamesuKitTests", dependencies: ["JamesuKit"])
    ]
)
