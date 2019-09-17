//
//  Card.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation

// MARK: - Card

public struct Card: Codable, Identifiable, Hashable, Equatable {

	public let symbol : Symbol

	public let suit : Suit

	// MARK: Identifiable

	public var id: Int {
		symbol.id + suit.id
	}

	// MARK: - Localization

	public var description : String {
		"\(symbol) of \(suit)"
	}

	public var localizedDescription : String {
		"\(symbol) of \(suit)"
	}

}


// MARK: - Deck

// A set of cards.
public typealias Deck = Set<Card>

extension Deck {

	var description : String {
		self.map({ $0.description }).description
	}

}
