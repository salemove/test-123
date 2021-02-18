// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GliaCore",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "GliaCore", type: .dynamic, targets: ["GliaCore"])
    ],
    dependencies: [
        .package(name: "SalemoveSDK", url: "https://github.com/gersonnoboa/glia-core", .exact("1.0.2"))
    ],
    targets: [
        .target(
            name: "GliaCore",
            dependencies: [
                "SalemoveSDK"
            ]
        )
    ]
)
