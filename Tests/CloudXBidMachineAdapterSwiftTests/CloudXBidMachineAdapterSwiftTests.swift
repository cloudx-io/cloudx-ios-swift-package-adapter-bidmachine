import CloudXBidMachineAdapter
import CloudXBidMachineAdapterPackage
import XCTest

final class CloudXBidMachineAdapterSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXBidMachineAdapterVersion, "4.0.0.0")
        XCTAssertNotNil(NSClassFromString("CLXBidMachineInitializer"))
    }
}
