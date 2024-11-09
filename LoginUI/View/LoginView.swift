//
//  ContentView.swift
//  LoginUI
//
//  Created by Ricky Primayuda Putra on 09/11/24.
//#imageLiteral(resourceName: "bitmap.png")

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var authUser: AuthUser
    
    var body: some View {
        if !authUser.isLoggedIn {
            return AnyView(Login())
        } else {
            return AnyView(Home())
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(AuthUser())
}
