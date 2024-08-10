//
//  ContentView.swift
//  MyFirstVOSApp
//
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Welcome to VOS app")
                .font(.title)
                .foregroundStyle(.yellow)
            
            Text("This is a horizontal stack")
                .font(.subheadline)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
