//
//  User.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/24/21.
//

import Foundation

struct User: Codable {
    enum CodingKeys: String, CodingKey {
        case id, login, name, bio, followers, following
        case htmlURL = "html_url"
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
    }
    
    var id: Int?
    var login: String?
    var name: String?
    var bio: String?
    var htmlURL: URL?
    var publicRepos: Int?
    var publicGists: Int?
    var followers: Int?
    var following: Int?
}
