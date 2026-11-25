@import CloudXBidMachineAdapter;
@import CloudXBidMachineAdapterPackage;
@import XCTest;

@interface CloudXBidMachineAdapterObjCTests : XCTestCase
@end

@implementation CloudXBidMachineAdapterObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXBidMachineAdapterVersion, @"4.0.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXBidMachineInitializer"));
}

@end
