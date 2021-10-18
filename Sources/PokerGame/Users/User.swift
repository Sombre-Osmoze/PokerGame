//
//  User.swift
//  PokerGame
//
//  Created by Marcus Florentin on 16/09/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import Foundation

// MARK: - Logging

import Logging


// MARK: - User

public class User : Codable, Identifiable {

	public var id : UUID = .init()

	public init() {
		
	}

	// MARK: - Game

	public var isPlaying = false

	// MARK: - Hand

	public var hand : Hand? = nil
}
