//
//  LoginView.swift
//  MyLoginPageSwiftUI
//
//  Created by Bharat chowdary Kolla on 10/25/23.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var userPassword: String = ""
    @State private var showAlert = false
    @State private var isLoading = false
    @State private var isLoggedin = false
    
    var body: some View {
            ZStack {
                VStack(spacing: 20) {
                    
                    LogoView(showAlert : $showAlert)
                    
                    LoginFormView(userName: $userName, userPassword: $userPassword, isLoggedIn: $isLoggedin, isLoading: $isLoading)
               
                }
                .padding()
                .blur(radius: isLoading ? 0.1 : 0) // Apply a blur effect if loading
                
                if isLoading {
                    ZStack {
                        Color.black.opacity(0.5)
                            .ignoresSafeArea()
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("User Entered Text"),
                    message: Text("\(userName) \(userPassword)")
                )
            }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
