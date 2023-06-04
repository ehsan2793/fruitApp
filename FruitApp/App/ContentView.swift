//
//  ContentView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    var fruits: [Fruit] = fruitsData

    // MARK: - BODY

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(furit: fruit)
                        .padding(.vertical, 4)
                } //: LOOP
            } //: LIST
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
