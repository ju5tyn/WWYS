//
//  WWYSApp.swift
//  WWYS
//
//  Created by Justyn Henman on 23/03/2021.
//

import SwiftUI
import Shared

@main
struct WWYSApp: App {
    
    let viewModel = QuoteViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
