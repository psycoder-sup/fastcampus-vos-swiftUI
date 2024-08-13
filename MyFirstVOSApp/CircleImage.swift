//
//  ChildView.swift
//  MyFirstVOSApp
//
//  Created by 박상욱 on 8/10/24.
//

import SwiftUI

struct CircleImage: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

#Preview(windowStyle: .automatic) {
    CircleImage(imageName: "cute-osori")
}
