@import CloudXMolocoAdapter;
@import CloudXMolocoAdapterPackage;
@import XCTest;

@interface CloudXMolocoAdapterObjCTests : XCTestCase
@end

@implementation CloudXMolocoAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMolocoAdapterVersion, @"4.11.1.1");
    XCTAssertNotNil(NSClassFromString(@"CLXMolocoInitializer"));
}

@end
