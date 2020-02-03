import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PokerGameTests.allTests),
		testCase(PacketTests.allTests),
		testCase(CardsTests.allTests)
    ]
}
#endif
