import CloudXMolocoAdapter
import CloudXMolocoAdapterPackage
import XCTest

final class CloudXMolocoAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMolocoAdapterVersion, "4.11.1.1")
        XCTAssertNotNil(NSClassFromString("CLXMolocoInitializer"))
    }
}
