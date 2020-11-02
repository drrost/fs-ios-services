// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fs-ios-services",
    products: [
        .library(
            name: "fs-ios-services",
            targets: ["fs-ios-services"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "fs-ios-services",
            dependencies: []),
        .testTarget(
            name: "fs-ios-servicesTests",
            dependencies: ["fs-ios-services"]),
    ]
)
