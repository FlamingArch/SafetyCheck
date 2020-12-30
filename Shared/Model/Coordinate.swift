//
//  Coordinate.swift
//  Safety Check
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import Foundation
import CoreLocation

struct Coordinate : Hashable, Codable, Identifiable {
    var id: Int
    var latitude: Double
    var longitude: Double
    var clcoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
