// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Pages",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "Pages", targets: ["Pages"])
    ],
    dependencies: [
        .package(path: "../HTMLDSL")
    ],
    targets: [
        .target(name: "Pages", dependencies: ["HTMLDSL"]),
        .testTarget(name: "PagesTests", dependencies: ["Pages"]),
    ]
)
