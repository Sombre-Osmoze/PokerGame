//
//  Hand.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation


// MARK: - Hand

public class Hand : Codable {

	public let deck : Deck

	init(_ deck: Deck) {
		self.deck = deck

	}

}
