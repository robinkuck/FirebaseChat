//
//  Login.swift
//  Firebase Chat
//
//  Created by Kuck, Robin on 09.01.22.
//

import SwiftUI

struct Login: View {
    
    @State var showRegistrationModalScreen = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    UserCredentialsView(buttonText: "Sign in") {
                        //TODO perform login
                    }
                    
                    Button {
                        self.showRegistrationModalScreen = true
                    } label: {
                        Text("Register Account")
                            .font(.system(size: 14, weight: .semibold))
                    }
                }
                .padding()
            }
            .navigationBarTitle("Log In")
            .background(Color(.init(white: 0, alpha: 0.05))
                            .ignoresSafeArea())
        }
        .sheet(isPresented: $showRegistrationModalScreen) {
            NavigationView {
                Registration()
                    .navigationBarItems(leading: Button("Cancel", action: {
                        self.showRegistrationModalScreen = false
                    }))
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
