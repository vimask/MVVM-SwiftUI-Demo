//
//  RepoCell.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/23/21.
//

import SwiftUI

struct RepoCell: View {
    let repo: Repo
    
    var body: some View {
        VStack(spacing: 10) {
            VStack {
                Text(repo.name ?? "")
                    .leadingAlignment()
                
                if (repo.fork ?? false) {
                    Text("Forked from other repo")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .leadingAlignment()
                }
            }
            
            if let description = repo.description {
                Text(description)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .leadingAlignment()
            }
        }
    }
}
