// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorDocumentScanner",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DocumentScannerPlugin",
            targets: ["DocumentScannerPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/nicklasanielsen/capacitor-swift-pm", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "DocumentScannerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/DocumentScannerPlugin"
        )
    ]
)
