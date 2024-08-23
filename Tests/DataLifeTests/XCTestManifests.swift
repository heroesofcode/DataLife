import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        [
            testCase(DataLifeTests.allTests)
        ]
    }
#endif
