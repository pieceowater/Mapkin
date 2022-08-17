//
//  MapkinApp.swift
//  Mapkin
//
//  Created by yury mid on 14.08.2022.
//

import SwiftUI

@main
struct MapkinApp: App {
    
    @StateObject private var vm = LocationsViewModel ()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
