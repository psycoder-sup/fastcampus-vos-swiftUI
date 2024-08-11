//
//  ContentView.swift
//  MyFirstVOSApp
//
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State private var name = "Osori"
    @State private var isYellow = true

    var body: some View {
        VStack(alignment: .center) {
            Text("Welcome to VOS app")
                .font(.title)
                .foregroundStyle(isYellow ? .yellow : .blue)
            
            HStack {
                Text("OSORI")
                    .font(.subheadline)
                Spacer()
                Text("15")
            }
            Image("cute-osori")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(.circle)
                .overlay {
                    Circle().stroke(.white, lineWidth: 5)
                }
                .shadow(radius: 7)
            Text("Hello my name is \(name)")
            TextField("Enter new name", text: $name)
                .padding()
                .background()
            Button("change title color to \(isYellow ? "Blue" : "Yellow")") {
                isYellow.toggle()
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic, traits: .fixedLayout(width: 500, height: 500)) {
    ContentView()
}
