// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXBidMachineAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXBidMachineAdapter",
            targets: ["CloudXBidMachineAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.11.0"
        ),
        .package(
            url: "https://github.com/bidmachine/BidMachine-SPM.git",
            exact: "3.8.2"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXBidMachineAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-bidmachine/releases/download/binary/3080200.0.0/CloudXBidMachineAdapter.xcframework.zip",
            checksum: "484d97c96b1a307fd119d3e0177fffad3a86762c4bbc8410ce5c07ee19153525"
        ),
        .target(
            name: "CloudXBidMachineAdapterPackage",
            dependencies: [
                "CloudXBidMachineAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "BidMachine", package: "bidmachine-spm"),
            ]
        ),
        .testTarget(
            name: "CloudXBidMachineAdapterSwiftTests",
            dependencies: ["CloudXBidMachineAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXBidMachineAdapterObjCTests",
            dependencies: ["CloudXBidMachineAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
