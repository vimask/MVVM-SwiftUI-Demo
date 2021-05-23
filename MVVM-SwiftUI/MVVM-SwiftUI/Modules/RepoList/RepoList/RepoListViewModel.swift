//
//  RepoListViewModel.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/23/21.
//

import Foundation

class RepoListViewModel: ObservableObject {
    @Published var repos: [Repo] = []
    var networkClient: GithubNetworkProvider = GithubNetworkClient()
    
    func getRepos() {
        networkClient
            .getRepos(username: "vimask")
            .replaceError(with: [])
            .assign(to: &$repos)
    }
}
