//
//  Symbol.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation

public enum Symbol: Int, Codable, Identifiable, CaseIterable {

	// MARK: - Symbol

	// MARK: Numbers

	case ace = 14

	case two = 2

	case three = 3

	case four = 4

	case five = 5

	case six = 6

	case seven = 7

	case eight = 8

	case nine = 9

	case ten = 10

	// MARK: High

	case jack = 11

	case queen = 12

	case king = 13

	// MARK: - Identifable

	public var id: Int {
		self.hashValue
	}

}
