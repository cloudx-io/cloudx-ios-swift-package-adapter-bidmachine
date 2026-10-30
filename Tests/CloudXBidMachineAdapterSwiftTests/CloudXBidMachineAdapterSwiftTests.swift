import CloudXBidMachineAdapter
import CloudXBidMachineAdapterPackage
import XCTest

final class CloudXBidMachineAdapterSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXBidMachineAdapterVersion, "3.8.2.0")
        XCTAssertNotNil(NSClassFromString("CLXBidMachineInitializer"))
    }
}
