// swift-tools-version: 6.0

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "GymLogix",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "GymLogix",
            targets: ["AppModule"],
            bundleIdentifier: "org.jhhs.627164.GymLogix",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .bunny),
            accentColor: .presetColor(.indigo),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ],
    swiftLanguageVersions: [.version("6")]
)