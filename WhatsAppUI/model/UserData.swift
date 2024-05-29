//
//  Database.swift
//  WhatsAppUI
//
//  Created by Sirac Seyidov on 20.05.2024.
//

import Foundation

struct Database: Codable, Hashable {
    var profile: Profile
    var chats: [Chat]
    var calls: [Call]
    var updates: [Update]
}
