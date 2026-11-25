import CloudXMolocoAdapter
import CloudXMolocoAdapterPackage
import XCTest

final class CloudXMolocoAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMolocoAdapterVersion, "4.13.0.0")
        XCTAssertNotNil(NSClassFromString("CLXMolocoInitializer"))
    }
}
