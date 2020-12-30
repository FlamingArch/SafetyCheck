//
//  HomeView.swift
//  Safety Check
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @Binding var unsafeCoordinates: [Coordinate]
    var body: some View {
        NavigationView {
            Text("Map is Not Yet Implemented! Press the top-right button to check for Coordinates Directly instead.")
                .toolbar {
                    ToolbarItem(placement:.primaryAction){
                        NavigationLink(
                            destination: CheckCoordinates(unsafeCoordinates: $unsafeCoordinates),
                            label: {
                                Image(systemName: "location")
                            })
                    }
                }
                .padding()
        }
    }
}
