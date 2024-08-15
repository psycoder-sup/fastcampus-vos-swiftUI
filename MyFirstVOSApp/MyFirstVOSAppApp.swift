//
//  MyFirstVOSAppApp.swift
//  MyFirstVOSApp
//
//  Created by 박상욱 on 8/10/24.
//

import SwiftUI

@Observable
class User {
    var name = "Osori"
    var image = "cute-osori"
    var age = 13
    var mainColor: Color = .yellow
}

@main
struct MyFirstVOSAppApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(User())
        }
        
        WindowGroup(id: "hello") {
            Text("hello")
        }
     }
}
