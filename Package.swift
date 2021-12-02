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
        .library( name: "UIViewControllerExtension", targets: ["UIViewControllerExtension"]),
        .library( name: "UIViewExtension", targets: ["UIViewExtension"]),
        .library( name: "UITextFieldExtension", targets: ["UITextFieldExtension"]),
        .library( name: "UIApplicationExtension", targets: ["UIApplicationExtension"]),
        .library( name: "UIKitSketchExtension", targets: ["UIKitSketchExtension"]),
        .library( name: "PaddedLabelExtension", targets: ["PaddedLabelExtension"]),
    ],
    dependencies: [
    ],
    targets: [
        .target( name: "CGSizeExtension", dependencies: []),
        .target( name: "UIColorExtension", dependencies: []),
        .target( name: "UIImageExtension", dependencies: []),
        .target( name: "UINavigationControllerExtension", dependencies: []),
        .target( name: "UITableViewExtension", dependencies: []),
        .target( name: "UIViewControllerExtension", dependencies: []),
        .target( name: "UIViewExtension", dependencies: []),
        .target( name: "UITextFieldExtension", dependencies: []),
        .target( name: "UIApplicationExtension", dependencies: []),
        .target( name: "UIKitSketchExtension", dependencies: []),
        .target( name: "PaddedLabelExtension", dependencies: []),
        
        .testTarget( name: "CGSizeExtensionTests", dependencies: ["CGSizeExtension"]),
        .testTarget( name: "UIColorExtensionTests", dependencies: ["UIColorExtension"]),
        .testTarget( name: "UIImageExtensionTests", dependencies: ["UIImageExtension"]),
        .testTarget( name: "UINavigationControllerExtensionTests", dependencies: ["UINavigationControllerExtension"]),
        .testTarget( name: "UITableViewExtensionTests", dependencies: ["UITableViewExtension"]),
        .testTarget( name: "UIViewControllerExtensionTests", dependencies: ["UIViewControllerExtension"]),
        .testTarget( name: "UIViewExtensionTests", dependencies: ["UIViewExtension"]),
        .testTarget( name: "UITextFieldExtensionTests", dependencies: ["UITextFieldExtension"]),
        .testTarget( name: "UIApplicationExtensionTests", dependencies: ["UIApplicationExtension"]),
        .testTarget( name: "UIKitSketchExtensionTests", dependencies: ["UIKitSketchExtension"]),
        .testTarget( name: "PaddedLabelExtensionTests", dependencies: ["PaddedLabelExtension"]),
    ],
    swiftLanguageVersions: [.v5]
)
