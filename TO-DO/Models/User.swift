//
//  User.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import Foundation

struct User: Codable {
    
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    
}
