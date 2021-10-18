//
//  PacketTests.swift
//  PokerGameTests
//
//  Created by Marcus Florentin on 01/02/2020.
//

import XCTest
@testable import PokerGame

class PacketTests: XCTestCase {


	func testStandartPacket() {
		let pack = Packet(game: .init())

		XCTAssertEqual(pack.cards.count, 52, "Incorrect number of card in the packet")
	}


	static var allTests = [
		("test standart packet", testStandartPacket),
	]

}
