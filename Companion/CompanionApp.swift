//
//  PraShinaApp.swift
//  PraShina
//
//  Created by Xiaohan Qin on 2/10/2023.
//

import SwiftUI

@main
struct CompanionApp: App {
    @StateObject private var eventStore = EventStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(eventStore)
        }
    }
}
