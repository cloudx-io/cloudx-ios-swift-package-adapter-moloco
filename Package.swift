// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXMolocoAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXMolocoAdapter",
            targets: ["CloudXMolocoAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/moloco/moloco-sdk-ios-spm.git",
            exact: "4.13.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMolocoAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-moloco/releases/download/binary/4130000.0.0/CloudXMolocoAdapter.xcframework.zip",
            checksum: "2fbcb5179015098455e2a1039ec4014cddca99bceaafab2edf01828ff7862698"
        ),
        .target(
            name: "CloudXMolocoAdapterPackage",
            dependencies: [
                "CloudXMolocoAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
            ]
        ),
        .testTarget(
            name: "CloudXMolocoAdapterSwiftTests",
            dependencies: ["CloudXMolocoAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXMolocoAdapterObjCTests",
            dependencies: ["CloudXMolocoAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
