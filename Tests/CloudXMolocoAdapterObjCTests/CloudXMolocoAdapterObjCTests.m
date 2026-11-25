@import CloudXMolocoAdapter;
@import CloudXMolocoAdapterPackage;
@import XCTest;

@interface CloudXMolocoAdapterObjCTests : XCTestCase
@end

@implementation CloudXMolocoAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMolocoAdapterVersion, @"4.13.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXMolocoInitializer"));
}

@end
