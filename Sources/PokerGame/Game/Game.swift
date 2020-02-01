//
//  Game.swift
//  PokerGame
//
//  Created by Marcus Florentin on 16/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation


// MARK: - Logging

import Logging

fileprivate let logger : Logger = .init(label: "poker-game.game")

// MARK: - Game

public class Game: Codable, Identifiable {

	public var id : UUID

	public init(users: [User]) {

		self.id = UUID()

		self.users = users
		self.packet = .init(game: id)

		logger.info("\(id) Created")
	}


	// MARK: - Packet Management

	public let packet : Packet

	// MARK: - Users

	public var users : [User]
}
