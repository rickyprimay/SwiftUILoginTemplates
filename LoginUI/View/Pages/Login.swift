//
//  Login.swift
//  LoginUI
//
//  Created by Ricky Primayuda Putra on 09/11/24.
//

import SwiftUI

struct Login: View {
    
    @EnvironmentObject var authUser: AuthUser
    
    @State var username: String = ""
    @State var password: String = ""
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    func checkLogin() {
        if username == "Ricky" && password == "1234" {
            authUser.isLoggedIn = true
        }
        else {
            authUser.isLoggedIn = false
            authUser.isCorrect = false
        }
    }
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    HStack{
                        VStack{
                            Text("Hi")
                                .bold()
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            Text("Welcome Back!")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        Image("bitmap")
                            .resizable()
                            .frame(width: 120, height: 80)
                            .padding()
                    }
                    Spacer()
                    
                }
                .frame(height: 180)
                .padding(30)
                .background(.purple)
                .clipShape(CustomShape(corner: .bottomRight, radius: 50))
                .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .leading){
                    Text("Username/email address")
                    TextField("Username...", text: $username)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5)
                    
                    Text("Password")
                    SecureField("Password...", text: $password)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5)
                    
                    if(!authUser.isCorrect){
                        Text("Incorrect username or password")
                            .bold()
                            .font(.callout)
                            .foregroundColor(.red)
                    }
                    
                    HStack{
                        Button(action:{}) {
                            Text("Forgot Password?")
                        }
                        Spacer()
                    }
                    .padding([.top, .bottom], 10)
                    
                    HStack{
                        Spacer()
                        Button(action:{
                            self.checkLogin()
                        }) {
                            Text("Sign In")
                                .bold()
                                .font(.callout)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding()
                    .background(.purple)
                    .cornerRadius(15)
                    
                    HStack{
                        Spacer()
                        Button(action:{}){
                            Text("Our Privacy Policy")
                                .bold()
                                .font(.callout)
                                .foregroundColor(.purple)
                        }
                        Spacer()
                    }
                    .padding()
                    
                    HStack{
                        Text("Don't have an account?")
                            .bold()
                            .font(.callout)
                            .foregroundColor(.black)
                        Spacer()
                        Button(action:{}){
                            Text("Sign Up")
                                .bold()
                                .font(.callout)
                                .foregroundColor(.purple)
                        }
                    }.padding()
                }.padding(30)
                
                Spacer()
            }
        }
    }
}
