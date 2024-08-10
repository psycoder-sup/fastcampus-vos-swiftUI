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
        VStack(alignment: .center) {
            Text("Welcome to VOS app OSORI")
                .font(.title)
                .foregroundStyle(.yellow)
            
            HStack {
                Text("OSORI")
                    .font(.subheadline)
                Spacer()
                Text("15")
            }
            ChildView()
            Spacer()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic, traits: .fixedLayout(width: 500, height: 500)) {
    ContentView()
}
