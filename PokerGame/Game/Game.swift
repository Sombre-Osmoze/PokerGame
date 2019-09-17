//
//  Game.swift
//  PokerGame
//
//  Created by Marcus Florentin on 16/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation


// MARK: - Logging

import os.log

fileprivate let logger = OSLog(subsystem: "black.sombre-osmoze.PokerGame.Packet", category: .pointsOfInterest)

fileprivate let logging = OSLog(subsystem: "black.sombre-osmoze.PokerGame", category: "Packet")

// MARK: - Game

public class Game: Codable {


	public init(users: [User]) {

		self.users = users
		self.packet = .init()

		os_log(.info, log: logger, "New game with %i users", users.count)
	}


	// MARK: - Packet Management

	public let packet : Packet

	// MARK: - Users

	public var users : [User]
}
