//
//  ContentView.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/23/21.
//

import SwiftUI

struct ContentView: View {
    static let username = "vimask"
    
    var body: some View {
        NavigationView {
            RepoListCoordinator(username: Self.username)   
        }
    }
}
