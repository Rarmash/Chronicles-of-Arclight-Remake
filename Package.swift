// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chronicles-of-Arclight-Remake",

    products: [
        .library(
            name: "ArclightCore",
            targets: ["ArclightCore"]
        ),

        .library(
            name: "ChroniclesGame",
            targets: ["ChroniclesGame"]
        ),

        .executable(
            name: "Chronicles-of-Arclight-Remake",
            targets: ["ChroniclesCLI"]
        )
    ],

    targets: [
        .target(
            name: "ArclightCore"
        ),

        .target(
            name: "ChroniclesGame",
            dependencies: [
                "ArclightCore"
            ]
        ),

        .executableTarget(
            name: "ChroniclesCLI",
            dependencies: [
                "ArclightCore",
                "ChroniclesGame"
            ]
        ),

        .testTarget(
            name: "ArclightCoreTests",
            dependencies: [
                "ArclightCore"
            ]
        ),

        .testTarget(
            name: "ChroniclesGameTests",
            dependencies: [
                "ChroniclesGame",
                "ArclightCore"
            ]
        )
    ]
)