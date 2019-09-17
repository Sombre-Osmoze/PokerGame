//
//  Hand.swift
//  PokerGame
//
//  Created by Marcus Florentin on 13/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation

// MARK: - Logging

import os.log

fileprivate let logger = OSLog(subsystem: "black.sombre-osmoze.PokerGame.Packet", category: .pointsOfInterest)

fileprivate let logging = OSLog(subsystem: "black.sombre-osmoze.PokerGame", category: "Packet")

// MARK: - Hand

public class Hand : Codable {

	public let deck : Deck

	init(_ deck: Deck) {
		self.deck = deck

		os_log(.info, log: logger, "New hand")
	}

}
