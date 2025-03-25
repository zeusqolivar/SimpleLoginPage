//
//  LoginViewModel.swift
//  SimpleLogin
//
//  Created by Zeus Solomon Olivar on 3/25/25.
//

import SwiftUI

enum LoginError: LocalizedError {
    case invalidCredentials
    case emptyFields
    
    var errorDescription: String? {
        switch self {
        case .invalidCredentials:
            return "Invalid username or password"
        case .emptyFields:
            return "Please fill in all fields"
        }
    }
}

@Observable final class LoginViewModel {
    var username = ""
    var password = ""
    var isAuthenticated = false
    var isLoading = false
    var error: LoginError?
    
    var isValidInput: Bool {
        !username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        !password.isEmpty
    }
    
    func login() async {
        guard isValidInput else {
            error = .emptyFields
            return
        }
        
        isLoading = true
        error = nil
        
        // Simulate API call with a delay
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        
        if username == "admin" && password == "password" {
            isAuthenticated = true
        } else {
            error = .invalidCredentials
        }
        
        isLoading = false
    }
    
    func logout() {
        isAuthenticated = false
        username = ""
        password = ""
        error = nil
    }
} 
