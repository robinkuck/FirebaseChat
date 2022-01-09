//
//  Onboarding.swift
//  Firebase Chat
//
//  Created by Kuck, Robin on 09.01.22.
//

import SwiftUI

struct Onboarding: View {
    
    @State var showRegistrationModalScreen = false
    
    var body: some View {
        NavigationView {
            Login(showRegistrationModalScreen: $showRegistrationModalScreen)
                .navigationBarTitle("Firebase Chat")
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

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
