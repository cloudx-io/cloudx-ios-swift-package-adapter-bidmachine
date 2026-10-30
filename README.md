# CloudX BidMachine adapter Swift package

This repository distributes the BidMachine adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 16 or later
- CloudX Core 3.11.0 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-bidmachine.git
```

Select an exact package version from the compatibility table. Add the
`CloudXBidMachineAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

| Package version | CloudX adapter | BidMachine SDK |
| --- | --- | --- |
| `3080200.0.0` | `3.8.2.0` | `3.8.2` |

The package installs CloudX Core and BidMachine SDK as dependencies. Import `CloudXCore` in the application. The adapter registers when the application loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three. The package tag joins the adapter components into the major number. For example, adapter `3.8.2.0` uses package version `3080200.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
