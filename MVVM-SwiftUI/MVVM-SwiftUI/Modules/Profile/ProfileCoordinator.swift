//
//  ProfileCoordinator.swift
//  MVVM-SwiftUI
//
//  Created by Vinh Vo on 5/24/21.
//

import SwiftUI

struct ProfileCoordinator: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.openURL) var openURL
    
    let username: String
    
    var body: some View {
        NavigationView {
            ProfileView(username: username, tapOnLinkAction: { url in
                openURL(url)
            })
            .navigationBarItems(leading: Button("Close", action: {
                presentationMode.wrappedValue.dismiss()
            }))
        }
    }
}
