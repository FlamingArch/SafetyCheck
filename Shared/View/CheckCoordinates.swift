//
//  CheckCoordinates.swift
//  Safety Check
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import SwiftUI

struct CheckCoordinates: View {
    @Binding var unsafeCoordinates: [Coordinate]
    
    @State var lat: String = ""
    @State var lon: String = ""
    
    @State var isSafe : Bool = true
    
    @State private var isResultsSheetsVisible : Bool = false
    @State private var isEmptyAlertVisible : Bool = false
    
}

extension CheckCoordinates {
    var body: some View {
        Form{
            Section {
                TextField("Latitude", text: $lat)
                TextField("Longitude", text: $lon)
            }
            Section {
                Button("Check Coordinate") { setResult() }
                    .sheet(isPresented: $isResultsSheetsVisible) {
                        ResultsView(isSafe: isSafe)
                    }
                    .alert(isPresented: $isEmptyAlertVisible) {
                        Alert(title: Text("Latitude and Longitude cannot be empty or non-decimal."))
                    }
            }
        }
        .navigationTitle("Check Coordinate")
        .toolbar(content: {
            ToolbarItem(placement: .primaryAction, content: {
                NavigationLink(
                    destination: UnsafeView(unsafeCoordinates: $unsafeCoordinates),
                    label: {
                        Text("Unsafe")
                    }
                )
            })
        })
    }
}

extension CheckCoordinates {
    func getSafety(_ lat: Double, _ lon: Double) -> Bool {
        for ucor in unsafeCoordinates {
            if lat==ucor.latitude && lon==ucor.longitude {
                return false
            }
        }
        return true
    }
    
    func setResult() {
        if let dlat = Double(lat), let dlon = Double(lon) {
            isSafe = getSafety(dlat, dlon)
            isResultsSheetsVisible.toggle()
        } else {
            isEmptyAlertVisible.toggle()
        }
    }
}
