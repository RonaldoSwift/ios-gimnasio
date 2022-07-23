//
//  ios_gimnasioApp.swift
//  ios-gimnasio
//
//  Created by Ronaldo Andre Vargas Huaman on 8/07/22.
//

import SwiftUI

@main
struct ios_gimnasioApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomePrincipalPantallaView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
