// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXBidMachineAdapter",
    platforms: [
        .iOS(.v15),
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
            exact: "4.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXBidMachineAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-bidmachine/releases/download/binary/4000000.0.0/CloudXBidMachineAdapter.xcframework.zip",
            checksum: "25d8e6462c7f27f9cbeb344a01b56670929390a8972abee29e4d7c84408d4772"
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
