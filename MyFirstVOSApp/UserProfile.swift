//
//  UserProfile.swift
//  MyFirstVOSApp
//
//  Created by 박상욱 on 8/11/24.
//

import SwiftUI

struct UserProfile: View {
    @Environment(User.self) var user
    
    var body: some View {
        VStack {
            HStack {
                Text(user.name)
                    .modifier(BlueTag())
                Spacer()
                
                Text(String(user.age))
                    .blueTag()
            }
            .padding()
            Image(user.image)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(.circle)
                .overlay {
                    Circle().stroke(.white, lineWidth: 5)
                }
                .shadow(radius: 7)
            Text("Hello my name is \(user.name)")
                .foregroundStyle(user.mainColor)
                .font(.title)
            
            Button("change title color") {
                user.mainColor = user.mainColor == .yellow ? .blue : .yellow
                print(user.mainColor)
            }
            .padding()
        }
    }
}

struct BlueTag: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
            )
            .foregroundStyle(.white)
    }
}

extension Text {
    func blueTag() -> some View {
        modifier(BlueTag())
    }
}

#Preview(windowStyle: .automatic) {
    UserProfile()
}
