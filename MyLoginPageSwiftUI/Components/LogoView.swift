//
//  LogoView.swift
//  MyLoginPageSwiftUI
//
//  Created by Bharat chowdary Kolla on 10/25/23.
//

import SwiftUI

func LogoView(showAlert: Binding<Bool>) -> some View {
    return HStack(){
        Text("Logo")
            .font(.largeTitle)
            .fontWeight(.bold)
        Spacer()
        Text("Need Help")
            .font(.body)
            .padding(.all, 10)
            .foregroundColor(Color.white)
            .background(Color.accentColor)
            .cornerRadius(10)
            .onTapGesture {
                showAlert.wrappedValue = true;
            }
    }
    .padding(.top, -150.0)
}
