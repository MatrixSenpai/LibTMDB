// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "libtmdb",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "libtmdb",
            targets: ["libtmdb"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(name: "libtmdb", dependencies: ["RxSwift"]),
        .testTarget(name: "libtmdbTests", dependencies: ["RxSwift", "libtmdb"])
    ]
)
