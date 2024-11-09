//
//  Home.swift
//  LoginUI
//
//  Created by Ricky Primayuda Putra on 09/11/24.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var authUser: AuthUser
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.purple
                Text("Home")
                    .foregroundColor(.white)
                
                    .navigationBarTitle("Home", displayMode: .inline)
                    .navigationBarItems(trailing:
                                            Button(action:{
                        self.authUser.isLoggedIn = false
                    }){
                        Image(systemName: "arrowshape.turn.up.right.circle.fill")
                    }
                    )
            }
        }
    }
}
