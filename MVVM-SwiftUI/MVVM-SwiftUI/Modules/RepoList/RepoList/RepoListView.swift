//
//  RepoListView.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/23/21.
//

import SwiftUI

struct RepoListView: View {
    @StateObject var viewModel = RepoListViewModel()
    let tapOnRepoAction: (Repo) -> Void
    
    var body: some View {
        List(viewModel.repos) { repo in
            Button(action: {
                tapOnRepoAction(repo)
            }, label: {
                RepoCell(repo: repo)
            })
        }
        .onAppear {
            viewModel.getRepos()
        }
    }
}
