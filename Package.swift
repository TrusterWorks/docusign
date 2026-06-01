// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorDocumentScanner",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorDocumentScanner",
            targets: ["DocumentScannerPlugin", "DocumentScannerPluginObjC"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "DocumentScannerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/DocumentScannerPlugin"
        ),
        .target(
            name: "DocumentScannerPluginObjC",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/DocumentScannerPluginObjC",
            publicHeadersPath: "include"
        )
    ]
)
