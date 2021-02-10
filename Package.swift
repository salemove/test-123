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
        .package(name: "Moya", url: "https://github.com/Moya/Moya.git", .exact("14.0.0")),
        .package(name: "Macaw", url: "https://github.com/exyte/Macaw.git", .exact("0.9.7")),
        .package(name: "ReactiveSwift", url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", .exact( "6.5.0")),
        .package(name: "SocketIO", url: "https://github.com/socketio/socket.io-client-swift", .exact( "15.2.0")),
        .package(name: "SwiftPhoenixClient", url: "https://github.com/davidstump/SwiftPhoenixClient.git", .exact("1.2.1")),
        .package(name: "TwilioVoice", url: "https://github.com/twilio/twilio-voice-ios", .exact( "6.2.0")),
        .package(name: "WebRTC", url: "https://github.com/alexpiezo/WebRTC.git", .exact( "1.1.31567")),
        .package(name: "SalemoveSDK", url: "https://github.com/gersonnoboa/glia-core", .exact("1.0.1"))
    ],
    targets: [
        .target(
            name: "GliaCore",
            dependencies: [
                "SalemoveSDK",
                "Moya",
                "Macaw",
                "ReactiveSwift",
                "SocketIO",
                "SwiftPhoenixClient",
                "TwilioVoice",
                "WebRTC"
            ]
        )
    ]
)
