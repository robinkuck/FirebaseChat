//
//  UserCredentialsView.swift
//  Firebase Chat
//
//  Created by Kuck, Robin on 09.01.22.
//

import SwiftUI

struct UserCredentialsView: View {
    
    @State var email = ""
    @State var password = ""
    let buttonText: String
    let onPressButton: () -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Group {
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
            }
            .padding(12)
            .background(Color.white)
            .cornerRadius(5)
            
            Button {
                onPressButton()
            } label: {
                HStack {
                    Spacer()
                    Text(buttonText)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .font(.system(size: 14, weight: .semibold))
                    Spacer()
                }
                .background(Color.blue)
                .cornerRadius(5)
            }
        }
    }
}

struct UserCredentialsView_Previews: PreviewProvider {
    static var previews: some View {
        UserCredentialsView(buttonText: "Sign in") {
            print("Button pressed!")
        }
    }
}
