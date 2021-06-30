// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GliaSDK",
    platforms: [.iOS(.v12)],
    products: [
        
        .library(
            name: "GliaSDK",
            targets: ["GliaSDK"]
        ),
        .library(
            name: "GliaWidgetsSDK",
            targets: ["GliaWidgetsSDK"]
        )
    ],
    dependencies: [
    ],
    targets: [
        
        .binaryTarget(
            name: "TwilioVoice",
            url: "https://github.com/salemove/ios-bundle/releases/download/0.27.0/TwilioVoice.xcframework.zip",
            checksum: "039b38797721ed272abdb69780cd3239961786d94175b6846036dad4c4a5b636"
        ),
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/salemove/ios-bundle/releases/download/0.27.0/WebRTC.xcframework.zip",
            checksum: "996f02aff0f0ade1a16f0d8798150e58a126934ebdfd20610421931bfa459859"
        ),
        .binaryTarget(
            name: "PureLayout",
            url: "https://github.com/salemove/ios-sdk-widgets/releases/download/0.1.0/PureLayout.xcframework.zip",
            checksum: "ba40b3770921a77ed8be07836ec8b89f6d93bab623f46b54d8c2a05b74a44ef0"
        ),
        .binaryTarget(
            name: "SalemoveSDK",
            url: "https://github.com/salemove/test-123/releases/download/0.29.6/SalemoveSDK.xcframework.zip",
            checksum: "17b3d473d29694c25fd53cde0be6ba7df5a95cfee0d43ae1f761b1a93e2e8968"
        ),
        .binaryTarget(
            name: "GliaWidgets",
            url: "https://github.com/salemove/test-123/releases/download/0.4.6/GliaWidgets.xcframework.zip",
            checksum: "09db77264cf7edc18d27e6880b7d9ed272542a4462b57e3bc10c95e480991bf7"
        ),
        
        .target(
            name: "GliaSDK",
            dependencies: [
                "WebRTC",
                "TwilioVoice",
                "SalemoveSDK"
            ]
        ),
        .target(
            name: "GliaWidgetsSDK",
            dependencies: [
                "SalemoveSDK",
                "GliaWidgets",
                "TwilioVoice",
                "WebRTC",
                "PureLayout"
            ]
        )
    ]
)
