//
//  TO_DOApp.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI
import FirebaseCore

@main
struct TO_DOApp: App {
   
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
