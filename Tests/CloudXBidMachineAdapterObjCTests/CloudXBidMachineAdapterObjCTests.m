@import CloudXBidMachineAdapter;
@import CloudXBidMachineAdapterPackage;
@import XCTest;

@interface CloudXBidMachineAdapterObjCTests : XCTestCase
@end

@implementation CloudXBidMachineAdapterObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXBidMachineAdapterVersion, @"3.8.2.0");
    XCTAssertNotNil(NSClassFromString(@"CLXBidMachineInitializer"));
}

@end
