//
//  Safety_CheckApp.swift
//  Shared
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import SwiftUI

@main
struct Safety_CheckApp: App {
    @State var unsafeCoordianates: [Coordinate] = getSampleUnsafeCoordinate()
    var body: some Scene {
        WindowGroup {
            HomeView(unsafeCoordinates: $unsafeCoordianates)
        }
    }
}
