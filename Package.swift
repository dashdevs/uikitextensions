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
        .library( name: "UITableViewExtension", targets: ["UITableViewExtension"]),
        .library( name: "UIViewExtension", targets: ["UIViewExtension"]),
        
    ],
    dependencies: [
    ],
    targets: [
        .target( name: "CGSizeExtension", dependencies: []),
        .target( name: "UIColorExtension", dependencies: []),
        .target( name: "UIImageExtension", dependencies: []),
        .target( name: "UINavigationControllerExtension", dependencies: []),
        .target( name: "UITableViewExtension", dependencies: []),
        .target( name: "UIViewExtension", dependencies: []),
        
        .testTarget( name: "CGSizeExtensionTests", dependencies: ["CGSizeExtension"]),
        .testTarget( name: "UIColorExtensionTests", dependencies: ["UIColorExtension"]),
        .testTarget( name: "UIImageExtensionTests", dependencies: ["UIImageExtension"]),
        .testTarget( name: "UINavigationControllerExtensionTests", dependencies: ["UINavigationControllerExtension"]),
        .testTarget( name: "UITableViewExtensionTests", dependencies: ["UITableViewExtension"]),
        .testTarget( name: "UIViewExtensionTests", dependencies: ["UIViewExtension"]),
        
    ],
    swiftLanguageVersions: [.v5]
)
