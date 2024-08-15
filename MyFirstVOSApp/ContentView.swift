//
//  ContentView.swift
//  MyFirstVOSApp
//
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openWindow) var openWindow
    var user = User()
    var body: some View {
        VStack(alignment: .center) {
            Text("Welcome to VOS app")
                .font(.title)
                .foregroundStyle(user.mainColor)
            
            UserProfile()
            Button("open new window") {
                openWindow(id:"hello")
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic, traits: .fixedLayout(width: 500, height: 500)) {
    ContentView()
}
