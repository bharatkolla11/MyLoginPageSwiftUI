//
//  LoginFormView.swift
//  MyLoginPageSwiftUI
//
//  Created by Bharat chowdary Kolla on 10/25/23.
//

import SwiftUI

struct LoginFormView: View {
    @Binding var userName: String
    @Binding var userPassword: String
    @Binding var isLoggedIn:Bool
    @Binding var isLoading:Bool
    @State private var isOn = false

    var body: some View {
        VStack(spacing : 10){
            Text("Username:")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)

            TextField("Enter UserName", text: $userName)
                .padding(.all, 10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
                .frame(height: 50)
        }

        VStack(spacing: 10){
            Text("Password:")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)

            SecureField("Enter Password", text: $userPassword)
                .padding(.all, 10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
                .frame(height: 50)
            
            Text("Forgot Passoword? Click Here")
                .font(.footnote)
                .fontWeight(.light)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        
        
        Button(action: {
            ButtonTapped()
        }) {
            Text("Login")
                .font(.headline)
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
        }
        NavigationLink("", destination: HomeView(), isActive: $isLoggedIn)
    
    }
    func ButtonTapped(){
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
            isLoggedIn = true
        }
    }
}
