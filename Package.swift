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
            exact: "4.11.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMolocoAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-moloco/releases/download/binary/4110101.0.0/CloudXMolocoAdapter.xcframework.zip",
            checksum: "126e40969405d28ddcd43316dc5573168e62d066377d9c795df43a6a10c8563e"
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
