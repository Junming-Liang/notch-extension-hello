// swift-tools-version: 5.9
import PackageDescription
let package = Package(name: "HelloNotchExtension", platforms: [.macOS(.v13)],
    products: [.executable(name: "HelloNotchExtension", targets: ["HelloExtension"])],
    targets: [.executableTarget(name: "HelloExtension")])
