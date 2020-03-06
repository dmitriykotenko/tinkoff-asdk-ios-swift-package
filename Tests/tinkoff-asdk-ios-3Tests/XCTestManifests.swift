import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(tinkoff_asdk_ios_3Tests.allTests),
    ]
}
#endif
