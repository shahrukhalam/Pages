// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Pages",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(name: "Pages", targets: ["Pages"])
    ],
    dependencies: [
        .package(path: "../HTMLDSL")
//        .package(url: "https://github.com/shahrukhalam/HTMLDSL", branch: "main")
    ],
    targets: [
        .target(name: "Pages", dependencies: ["HTMLDSL"]),
        .testTarget(name: "PagesTests", dependencies: ["Pages"]),
    ]
)
