//
//  ChildView.swift
//  MyFirstVOSApp
//
//  Created by 박상욱 on 8/10/24.
//

import SwiftUI

struct ChildView: View {
    var body: some View {
        Image("cute-osori")
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
    ChildView()
}
