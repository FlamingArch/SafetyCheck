//
//  ResultsView.swift
//  Safety Check
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import SwiftUI

struct ResultsView: View {
    var isSafe: Bool
//    var lat : Double
//    var lon : Double
    var body: some View {
        Text(isSafe ? "Safe" : "Unsafe")
            .foregroundColor(isSafe ? nil : .red)
            .font(.system(size: 56, weight: .thin))
//        Text("\(lat), \(lon)")
    }
}
