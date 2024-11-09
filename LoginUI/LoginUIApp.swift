//
//  LoginUIApp.swift
//  LoginUI
//
//  Created by Ricky Primayuda Putra on 09/11/24.
//

import SwiftUI

@main
struct LoginUIApp: App {
    
    let authState = AuthUser()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
