//
//  TodoApp.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import FirebaseCore
import SwiftUI

@main
struct TodoApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
