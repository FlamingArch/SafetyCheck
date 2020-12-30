//
//  UnsafeCoordinates.swift
//  Safety Check
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import Foundation

func getSampleUnsafeCoordinate(count: Int = 50) -> [Coordinate] {
    var coordinates: [Coordinate] = []
    var i = 0;
    while i<count {
        coordinates.append(
            Coordinate(
                id: i,
                latitude: Double(Int.random(in: -9000000...9000000))/100000,
                longitude: Double(Int.random(in: -18000000...18000000))/100000)
        )
        i+=1
    }
    return coordinates
}

