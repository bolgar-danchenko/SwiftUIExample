//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
    
        VStack {
            Image("vkLogo")
                .resizable()
                .frame(width: 100, height: 100)
            VStack(spacing: -0.5) {
                TextField("Login", text: $login)
                    .frame(height: 50)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .border(Color(UIColor.lightGray), width: 0.5)
                SecureField("Password", text: $password)
                    .frame(height: 50)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .border(Color(UIColor.lightGray), width: 0.5)
            }
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(Color(.lightGray), style: StrokeStyle(lineWidth: 0.5)))
            .padding(.top, 120)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            
            Button(action: {
                print("Did tap Log In button")
            }) {
                Text("Log In")
                    .frame(height: 50)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(Color(cgColor: CGColor(red: 81/255.0, green: 129/255.0, blue: 184/255.0, alpha: 1.0)))
            .cornerRadius(10)
            .padding(.top, 16)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
     
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
