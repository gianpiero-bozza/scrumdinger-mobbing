//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Gianpiero Bozza on 20.07.2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
