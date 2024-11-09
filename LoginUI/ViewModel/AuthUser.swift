//
//  AuthUser.swift
//  LoginUI
//
//  Created by Ricky Primayuda Putra on 09/11/24.
//

import Foundation

class AuthUser: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var isCorrect: Bool = true
}
