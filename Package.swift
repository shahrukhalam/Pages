// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Pages",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "Pages", targets: ["Pages"])
    ],
    dependencies: [
        .package(path: "../HTMLDSL"),
        .package(url: "https://github.com/kylef/PathKit.git", from: "1.0.1")
    ],
    targets: [
        .executableTarget(name: "PagesCLI", dependencies: ["Pages"]),
        .target(name: "Pages",
                dependencies: ["HTMLDSL", "PathKit"],
                resources: [.process("Articles/Contents")]),
        .testTarget(name: "PagesTests", dependencies: ["Pages"]),
    ]
)
