// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DDUIKitExtensions",
    platforms: [.iOS(.v10)],
    products: [
        .library( name: "CGSizeExtension", targets: ["CGSizeExtension"]),
    ],
    dependencies: [
    ],
    targets: [
        .target( name: "CGSizeExtension", dependencies: []),
        .testTarget( name: "CGSizeExtensionTests", dependencies: ["CGSizeExtension"]),
    ],
    swiftLanguageVersions: [.v5]
)
