//
//  UnsafeView.swift
//  Safety Check
//
//  Created by Harsh Chaturvedi on 30/12/20.
//

import SwiftUI

struct UnsafeView: View {
    @Binding var unsafeCoordinates : [Coordinate]
    var body: some View {
        List {
            ForEach(unsafeCoordinates) { item in
                Text("\(item.latitude), \(item.longitude)")
            }
            .onDelete(perform: deleteCoordinate)
        }.navigationTitle("Unsafe Coordinates")
    }
}

extension UnsafeView {
    func deleteCoordinate(index: IndexSet) {
        unsafeCoordinates.remove(atOffsets: index)
    }
}

//struct UnsafeView_Previews: PreviewProvider {
//    static var previews: some View {
//        UnsafeView()
//    }
//}
