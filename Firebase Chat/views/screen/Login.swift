//
//  Login.swift
//  Firebase Chat
//
//  Created by Kuck, Robin on 09.01.22.
//

import SwiftUI

struct Login: View {
    
    @Binding var showRegistrationModalScreen: Bool
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                UserCredentialsView(buttonText: "Sign in") {
                    //TODO perform login
                }
                
                Button {
                    self.showRegistrationModalScreen = true
                } label: {
                    Text("Register")
                        .font(.system(size: 14, weight: .semibold))
                }
                
            }
            .padding()
        }
        .background(Color(.init(white: 0, alpha: 0.05))
                        .ignoresSafeArea())
    }
}

struct Login_Previews: PreviewProvider {
    @State static var showRegistrationModalScreen = false
    
    static var previews: some View {
        Login(showRegistrationModalScreen: $showRegistrationModalScreen)
    }
}
