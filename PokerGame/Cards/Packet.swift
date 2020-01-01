//
//  Packet.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation
import os.log

// MARK: - Logging

fileprivate let logger = OSLog(subsystem: "black.sombre-osmoze.PokerGame.Packet", category: .pointsOfInterest)

fileprivate let logging = OSLog(subsystem: "black.sombre-osmoze.PokerGame", category: "Packet")

public class Packet : Codable {


	// MARK: - Packet Struct

	public static let standart : Packet = .init()

	// MARK: - Packet

	public let cards : Deck

	public var deck : Deck = []

	public init() {
		var cards : Deck = []

		Suit.allCases.forEach { (suit) in
			Symbol.allCases.forEach({ cards.insert(.init(symbol: $0, suit: suit)) })
		}

		self.cards = cards
		deck = cards

		os_log("Creation packet of %i cards", log: logger, type: .info, cards.count)
	}

	public func reset() -> Void {
		deck = cards
		os_log(.info, log: logging, "The packet deck was reseted")
	}

	// MARK: - Hand

	let handSize : Int = 2

	public func newHand() -> Hand {
		var hand : Deck = []
		var cards = deck.shuffled()

		for _ in 0..<handSize {
			// TODO: Improve hand creation.
			let card = cards.removeFirst()

			deck.remove(card)
			hand.insert(card)
		}

		return Hand(hand)
	}

}
