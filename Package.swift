// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BinaryTree",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BinaryTree",
            targets: ["BinaryTree"]),
    ],
    dependencies: [
        // We need Realm for our Tree implementation
        .package(name: "Realm", url: "https://github.com/realm/realm-swift.git", from: "10.30.0")
    ],
    targets: [
        .target(
            name: "BinaryTree",
            // from Realm we use RealmSwift
            dependencies: [.product(name: "RealmSwift", package: "Realm")]),
        .testTarget(
            name: "BinaryTreeTests",
            dependencies: ["BinaryTree"]),
    ]
)
