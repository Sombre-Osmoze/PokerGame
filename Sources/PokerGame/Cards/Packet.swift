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

fileprivate let logger : Logger = .init(label: "poker-game.packet")

// MARK: - Packet

public class Packet : Codable, Identifiable {

	/// The game id that the packet is attached to.
	public var id: UUID

	/// All availables cards in the packet.
	public let cards : Deck

	/// Current cards staying in the packet stack.
	public var deck : [Card] = []

	public init(game id: UUID) {

		self.id = id

		// Creating cards.

		var cards : Deck = []
		Suit.allCases.forEach { (suit) in
			Symbol.allCases.forEach({ cards.insert(.init(symbol: $0, suit: suit)) })
		}

		self.cards = cards
		deck = cards.shuffled()


		logger.info("Game - \(id.uuidString): Creation of packet of \(cards.count) cards")
	}

	/// Reset the packet stack.
	public func reset() -> Void {
		deck = cards.shuffled()
		logger.info("Game - \(id): The packet deck was reseted")
	}

	// MARK: - Hand

	/// Default size of one hand.
    var handSize : Int = 2

	/// Create a new hand from the deck.
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
