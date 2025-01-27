//
//  User.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
