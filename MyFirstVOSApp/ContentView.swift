//
//  ContentView.swift
//  MyFirstVOSApp
//
//

import SwiftUI
import RealityKit
import RealityKitContent

@Observable
class User {
    var name = "Osori"
    var image = "cute-osori"
    var age = 13
    var mainColor: Color = .yellow
}

struct ContentView: View {
    
    var user = User()
    var body: some View {
        VStack(alignment: .center) {
            Text("Welcome to VOS app")
                .font(.title)
                .foregroundStyle(user.mainColor)
            
            UserProfile(user: user)
            Spacer()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic, traits: .fixedLayout(width: 500, height: 500)) {
    ContentView()
}
