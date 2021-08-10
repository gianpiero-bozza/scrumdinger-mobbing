//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Gianpiero Bozza on 20.07.2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @ObservedObject private var data = ScrumData()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .onAppear {
                data.load()
            }
        }
    }
}
