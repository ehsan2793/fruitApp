//
//  ContentView.swift
//  FruitApp
//
//  Created by Ehsan Rahimi on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData

    // MARK: - BODY

    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(furit: fruit)) {
                        FruitRowView(furit: fruit)
                            .padding(.vertical, 4)
                    }
                } //: LOOP
            } //: LIST
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTT
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                } // TOOLBAR ITEM
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
