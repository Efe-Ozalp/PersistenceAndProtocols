//
//  PersistenceAndProtocolsApp.swift
//  PersistenceAndProtocols
//
//  Created by Efe Ozalp on 10/9/23.
//

import SwiftUI

@main
struct PersistenceAndProtocolsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                        ContentView()
                            .tabItem {
                                Image(systemName: "1.square.fill") // This is a system image, you can choose another one that suits your app.
                                Text("First Tab")
                            }
                        
                        ContentView2()
                            .tabItem {
                                Image(systemName: "2.square.fill") // This is a system image, you can choose another one that suits your app.
                                Text("Second Tab")
                            }
                    }
            
        }
    }
}

