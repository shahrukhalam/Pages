// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Pages",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Pages",
            targets: ["Pages"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/shahrukhalam/HTMLDSL.git", branch: "main"),
         .package(url: "https://github.com/JohnSundell/Splash", from: "0.16.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Pages",
            dependencies: ["HTMLDSL", "Splash"]),
        .testTarget(
            name: "PagesTests",
            dependencies: ["Pages"]),
    ]
)
