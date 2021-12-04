//
//  LoginModel.swift
//  EcommerceAppKit (iOS)
//
//  Created by Andrei Kamarou on 29.11.21.
//

import SwiftUI

class LoginModel: ObservableObject {
    
    // MARK: - PROPERTIES
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    @Published var reEnterPassword: String = ""
    @Published var showReEnterPassword: Bool = false
    @Published var registerUser: Bool = false
    
    
    func Login() {
        
    }
    
    func Register() {
        
    }
    
    func forgotPassword() {
        
    }
}
