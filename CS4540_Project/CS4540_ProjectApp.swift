//
//  CS4540_ProjectApp.swift
//  CS4540_Project
//
//  Created by Jorge Mata Jr on 7/27/22.
//

import SwiftUI

@main
struct CS4540_ProjectApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
