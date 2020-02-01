//
//  Suit.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation

/// Card suit.
public enum Suit: String, Codable, Identifiable, CaseIterable {

	case heart = "hearts"

	case tiles = "tiles"

	case clovers = "clovers"

	case pikes = "pikes"

	// MARK: - Identifiable

	public var id: Int {
		self.hashValue
	}
}
