//
//  ContentView.swift
//  Firebase Chat
//
//  Created by Kuck, Robin on 09.01.22.
//

import SwiftUI

struct Registration: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Button {
                    
                } label: {
                    Image(systemName: "person.fill")
                        .font(.system(size: 64))
                        .padding()
                }
                
                UserCredentialsView(buttonText: "Create Account") {
                    //TODO perform registration
                }
            }
            .padding()
        }
        .navigationBarTitle("Register Account")
        .background(Color(.init(white: 0, alpha: 0.05))
                        .ignoresSafeArea())
    }
    
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
