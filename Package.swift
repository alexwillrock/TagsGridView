// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TagsGridView",
    platforms: [.iOS(.v14), .macOS(.v10_15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TagsGridView",
            targets: ["TagsGridView"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "TagsGridView",
            dependencies: []),
        .testTarget(
            name: "TagsGridViewTests",
            dependencies: ["TagsGridView"]),
    ]
)
