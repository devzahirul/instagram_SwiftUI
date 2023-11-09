//
//  InstagramApp.swift
//  Instagram
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

@main
struct InstagramApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           MainTabView()
           .preferredColorScheme(.light)
        }
    }
}
