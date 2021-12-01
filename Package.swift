// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DDUIKitExtensions",
    platforms: [.iOS(.v10)],
    products: [
        .library( name: "CGSizeExtension", targets: ["CGSizeExtension"]),
        .library( name: "UIColorExtension", targets: ["UIColorExtension"]),
        .library( name: "UIImageExtension", targets: ["UIImageExtension"]),
        .library( name: "UINavigationControllerExtension", targets: ["UINavigationControllerExtension"]),
    ],
    dependencies: [
    ],
    targets: [
        .target( name: "CGSizeExtension", dependencies: []),
        .target( name: "UIColorExtension", dependencies: []),
        .target( name: "UIImageExtension", dependencies: []),
        .target( name: "UINavigationControllerExtension", dependencies: []),
        
        .testTarget( name: "CGSizeExtensionTests", dependencies: ["CGSizeExtension"]),
        .testTarget( name: "UIColorExtensionTests", dependencies: ["UIColorExtension"]),
        .testTarget( name: "UIImageExtensionTests", dependencies: ["UIImageExtension"]),
        .testTarget( name: "UINavigationControllerExtensionTests", dependencies: ["UINavigationControllerExtension"]),
    ],
    swiftLanguageVersions: [.v5]
)
