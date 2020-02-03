import XCTest

import PokerGameTests

var tests = [XCTestCaseEntry]()
tests += PokerGameTests.allTests()
tests += CardsTests.allTests()
tests += PacketTests.allTests()
XCTMain(tests)
