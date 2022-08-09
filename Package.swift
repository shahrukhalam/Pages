// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Pages",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "PagesCLI", targets: ["PagesCLI"]),
        .library(name: "Pages", targets: ["Pages"])
    ],
    dependencies: [
        .package(path: "../HTMLDSL"),
        .package(url: "https://github.com/JohnSundell/Splash", from: "0.16.0"),
        .package(url: "https://github.com/kylef/PathKit.git", from: "1.0.1")
    ],
    targets: [
        .executableTarget(name: "PagesCLI", dependencies: ["Pages", "PathKit"]),
        .target(name: "Pages", dependencies: ["HTMLDSL", "Splash"]),
        .testTarget(name: "PagesTests", dependencies: ["Pages"]),
    ]
)
