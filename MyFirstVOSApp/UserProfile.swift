//
//  UserProfile.swift
//  MyFirstVOSApp
//
//  Created by 박상욱 on 8/11/24.
//

import SwiftUI

struct UserProfile: View {
    var user: User
    var body: some View {
        VStack {
            HStack {
                Text(user.name)
                    .font(.subheadline)
                Spacer()
                Text(String(user.age))
            }
            .padding()
            CircleImage(imageName: user.image)
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

#Preview(windowStyle: .automatic) {
    UserProfile(user: User())
}
