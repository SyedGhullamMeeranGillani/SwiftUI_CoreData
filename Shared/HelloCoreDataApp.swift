//
//  HelloCoreDataApp.swift
//  Shared
//
//  Created by Syed Ghullam Meeran Gillani on 10/06/2022.
//

import SwiftUI

@main
struct HelloCoreDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(manager: CoreDataManger())
        }
    }
}
