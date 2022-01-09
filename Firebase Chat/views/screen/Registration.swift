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
                    //TODO perform profile icon change
                } label: {
                    ZStack {
                        Circle()
                            .stroke(Color.black, lineWidth: 5)
                            .foregroundColor(.white)
                        Image(systemName: "person.fill")
                            .font(.system(size: 64))
                            .foregroundColor(.black)
                            .padding()
                    }
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
