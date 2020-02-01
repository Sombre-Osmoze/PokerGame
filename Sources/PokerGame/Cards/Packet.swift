//
//  Packet.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation
import Logging

// MARK: - Logging


public class Packet : Codable {

	// MARK: - Packet

	/// All availables cards in the packet.
	public let cards : Deck

	/// Current cards staying in the packet stack.
	public var deck : [Card] = []

	private let logger : Logger = .init(label: "poker-game.packet")

	public init(game id: UUID) {

		logger = .init(label: "poker-game.game_\(id.uuidString).packet")

		var cards : Deck = []

		Suit.allCases.forEach { (suit) in
			Symbol.allCases.forEach({ cards.insert(.init(symbol: $0, suit: suit)) })
		}

		self.cards = cards
		deck = cards.shuffled()


		logger.info("Creation of packet of \(cards.count) cards")
	}

	/// Reset the packet stack.
	public func reset() -> Void {
		deck = cards.shuffled()
		logger.info("The packet deck was reseted")
	}

	// MARK: - Hand

	/// Default size of one hand.
	let handSize : Int = 2

	/// Create
	public func newHand() -> Hand {
		var hand : Deck = []

		for _ in 1...handSize {
			// TODO: Improve hand creation.
			let card = deck.removeFirst()

			hand.insert(card)
		}

		return Hand(hand)
	}

}
