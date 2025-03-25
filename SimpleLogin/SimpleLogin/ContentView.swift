//
//  ContentView.swift
//  SimpleLogin
//
//  Created by Zeus Solomon Olivar on 3/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isAuthenticated {
                    WelcomeView(viewModel: viewModel)
                } else {
                    LoginView(viewModel: viewModel)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
